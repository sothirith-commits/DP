.class public final Lcom/petterp/floatingx/util/FxKeyBoardTouchImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final tag:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/petterp/floatingx/util/FxKeyBoardTouchImpl;->$r8$classId:I

    iput-object p2, p0, Lcom/petterp/floatingx/util/FxKeyBoardTouchImpl;->tag:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget v0, p0, Lcom/petterp/floatingx/util/FxKeyBoardTouchImpl;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/petterp/floatingx/util/FxKeyBoardTouchImpl;->tag:Ljava/lang/Object;

    check-cast p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;

    iget-object p0, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mRemoteRenderInstance:Lcom/cocos/aidl/ICocosRemoteRender;

    if-eqz p0, :cond_0

    :try_start_0
    check-cast p0, Lcom/cocos/aidl/ICocosRemoteRender$Stub$Proxy;

    invoke-virtual {p0, p2}, Lcom/cocos/aidl/ICocosRemoteRender$Stub$Proxy;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    iget-object p0, p0, Lcom/petterp/floatingx/util/FxKeyBoardTouchImpl;->tag:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/ListPopupWindow;

    if-nez p1, :cond_1

    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    if-ltz v0, :cond_1

    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_1

    if-ltz p2, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v0

    if-ge p2, v0, :cond_1

    iget-object p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mResizePopupRunnable:Landroidx/appcompat/widget/ListPopupWindow$ListSelectorHider;

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_1
    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mResizePopupRunnable:Landroidx/appcompat/widget/ListPopupWindow$ListSelectorHider;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0

    :pswitch_1
    if-nez p2, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_8

    if-eqz p1, :cond_8

    sget-object p2, Lcom/petterp/floatingx/util/FxInputHelper;->INSTANCE:Lcom/petterp/floatingx/util/FxInputHelper;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "fxTag"

    iget-object p0, p0, Lcom/petterp/floatingx/util/FxKeyBoardTouchImpl;->tag:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/petterp/floatingx/FloatingX;->controlOrNull(Ljava/lang/String;)Lcom/petterp/floatingx/imp/app/FxAppControlImp;

    move-result-object p0

    const/4 p2, 0x0

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/petterp/floatingx/imp/app/FxAppControlImp;->getManagerView()Landroid/widget/FrameLayout;

    move-result-object p0

    if-nez p0, :cond_5

    goto :goto_2

    :cond_5
    instance-of v0, p0, Lcom/petterp/floatingx/view/FxBasicContainerView;

    if-eqz v0, :cond_6

    move-object p2, p0

    check-cast p2, Lcom/petterp/floatingx/view/FxBasicContainerView;

    :cond_6
    :goto_2
    check-cast p2, Lcom/petterp/floatingx/view/FxSystemContainerView;

    :goto_3
    if-nez p2, :cond_7

    goto :goto_4

    :cond_7
    const/4 p0, 0x1

    invoke-virtual {p2, p0}, Lcom/petterp/floatingx/view/FxSystemContainerView;->updateKeyBoardStatus$floatingx_release(Z)V

    new-instance p0, Lcom/petterp/floatingx/util/FxInputHelper$$ExternalSyntheticLambda0;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/petterp/floatingx/util/FxInputHelper$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;I)V

    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_8
    :goto_4
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
