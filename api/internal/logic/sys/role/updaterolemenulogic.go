package logic

import (
	"context"
	"go-zero-admin/api/internal/common/errorx"
	"go-zero-admin/rpc/sys/sysclient"

	"go-zero-admin/api/internal/svc"
	"go-zero-admin/api/internal/types"

	"github.com/tal-tech/go-zero/core/logx"
)

type UpdateRoleMenuLogic struct {
	logx.Logger
	ctx    context.Context
	svcCtx *svc.ServiceContext
}

func NewUpdateRoleMenuLogic(ctx context.Context, svcCtx *svc.ServiceContext) UpdateRoleMenuLogic {
	return UpdateRoleMenuLogic{
		Logger: logx.WithContext(ctx),
		ctx:    ctx,
		svcCtx: svcCtx,
	}
}

func (l *UpdateRoleMenuLogic) UpdateRoleMenu(req types.UpdateRoleMenuReq) (*types.UpdateRoleMenuResp, error) {
	_, err := l.svcCtx.Sys.UpdateMenuRole(l.ctx, &sysclient.UpdateMenuRoleReq{
		RoleId:  req.RoleId,
		MenuIds: req.MenuIds,
	})

	if err != nil {
		return nil, errorx.NewDefaultError("更新角色菜单失败")
	}

	return &types.UpdateRoleMenuResp{
		Code:    "000000",
		Message: "更新角色菜单成功",
	}, nil
}
