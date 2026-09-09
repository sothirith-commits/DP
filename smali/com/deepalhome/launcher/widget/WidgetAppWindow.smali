.class public final Lcom/deepalhome/launcher/widget/WidgetAppWindow;
.super Lcom/deepalhome/launcher/window/BaseAppWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/deepalhome/launcher/window/BaseAppWindow<",
        "Lcom/deepalhome/launcher/databinding/WidgetAppWindowBinding;",
        ">;"
    }
.end annotation


# virtual methods
.method public getLayoutId()I
    .locals 0

    const p0, 0x7f0e0120

    return p0
.end method

.method public final onInit()V
    .locals 1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/WidgetAppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WidgetAppWindowBinding;->widgetsView:Lcom/deepalhome/launcher/widget/WidgetsView;

    new-instance v0, Lcom/deepalhome/launcher/widget/WindowWidgetManager;

    invoke-direct {v0}, Lcom/deepalhome/launcher/widget/WindowWidgetManager;-><init>()V

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/widget/WidgetsView;->setWidgetManager(Lcom/deepalhome/launcher/widget/IWidgetManager;)V

    return-void
.end method

.method public final updateUIMode(Z)V
    .locals 0

    return-void
.end method
