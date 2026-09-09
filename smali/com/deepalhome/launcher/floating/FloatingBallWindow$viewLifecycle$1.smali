.class public final Lcom/deepalhome/launcher/floating/FloatingBallWindow$viewLifecycle$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/petterp/floatingx/listener/IFxViewLifecycle;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final attach(Landroid/view/View;)V
    .locals 0

    const-string p0, "view"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final detached(Landroid/view/View;)V
    .locals 0

    const-string p0, "view"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->gifView:Lcom/deepalhome/launcher/floating/GifTextureView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/floating/GifTextureView;->release()V

    :cond_0
    const/4 p0, 0x0

    sput-object p0, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->gifView:Lcom/deepalhome/launcher/floating/GifTextureView;

    sput-object p0, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->rootView:Landroid/view/View;

    sput-object p0, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->iconView:Landroid/widget/ImageView;

    sget-object p0, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->iconController:Lcom/deepalhome/launcher/floating/FloatingBallIconController;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->clearCache()V

    return-void
.end method

.method public final initView(Lcom/petterp/floatingx/view/FxViewHolder;)V
    .locals 0

    sget-object p0, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->INSTANCE:Lcom/deepalhome/launcher/floating/FloatingBallWindow;

    invoke-virtual {p1}, Lcom/petterp/floatingx/view/FxViewHolder;->getView()Landroid/view/View;

    move-result-object p0

    sput-object p0, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->rootView:Landroid/view/View;

    const p0, 0x7f0b0219

    invoke-virtual {p1, p0}, Lcom/petterp/floatingx/view/FxViewHolder;->getView(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    sput-object p0, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->iconView:Landroid/widget/ImageView;

    const p0, 0x7f0b0218

    invoke-virtual {p1, p0}, Lcom/petterp/floatingx/view/FxViewHolder;->getView(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/floating/GifTextureView;

    sput-object p0, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->gifView:Lcom/deepalhome/launcher/floating/GifTextureView;

    sget-object p0, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->INSTANCE:Lcom/deepalhome/launcher/floating/FloatingBallWindow;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->applyBallConfig()V

    return-void
.end method
