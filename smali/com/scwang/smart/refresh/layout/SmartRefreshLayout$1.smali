.class public final Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

.field public final synthetic val$notify:Z


# direct methods
.method public synthetic constructor <init>(ILcom/scwang/smart/refresh/layout/SmartRefreshLayout;Z)V
    .locals 0

    iput p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$1;->$r8$classId:I

    iput-object p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$1;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iput-boolean p3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$1;->val$notify:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    iget v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$1;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iput-wide v0, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mLastOpenTime:J

    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    iget-object v0, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshListener:Lcom/scwang/smart/refresh/layout/listener/OnRefreshListener;

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$1;->val$notify:Z

    if-eqz p0, :cond_2

    invoke-interface {v0, p1}, Lcom/scwang/smart/refresh/layout/listener/OnRefreshListener;->onRefresh(Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;)V

    goto :goto_0

    :cond_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v0, 0x1

    const/16 v1, 0xbb8

    invoke-virtual {p1, v1, v0, p0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->finishRefresh(IZLjava/lang/Boolean;)V

    :cond_2
    :goto_0
    iget-object p0, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    if-eqz p0, :cond_4

    iget v0, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderMaxDragRate:F

    const/high16 v1, 0x41200000    # 10.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_3

    iget v1, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    :cond_3
    float-to-int v0, v0

    iget v1, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    invoke-interface {p0, p1, v1, v0}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->onStartAnimator(Lcom/scwang/smart/refresh/layout/api/RefreshLayout;II)V

    :cond_4
    :goto_1
    return-void

    :pswitch_0
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$1;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-boolean p0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$1;->val$notify:Z

    invoke-virtual {p1, p0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->setStateDirectLoading(Z)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
