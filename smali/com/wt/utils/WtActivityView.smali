.class public Lcom/wt/utils/WtActivityView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method private getHostHeight()I
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method private getHostWidth()I
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public getDisplayId()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public final onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    new-instance v0, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    return-void
.end method

.method public setForceRecreateOnResize(Z)V
    .locals 0

    return-void
.end method

.method public setLogListener(Lcom/wt/utils/WtActivityViews$HostLogListener;)V
    .locals 0

    return-void
.end method

.method public setSurfaceLayer(Z)V
    .locals 0

    return-void
.end method

.method public setZOrderOnTop(Z)V
    .locals 0

    return-void
.end method
