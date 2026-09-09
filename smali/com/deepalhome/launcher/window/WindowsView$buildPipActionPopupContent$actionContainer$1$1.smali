.class public final Lcom/deepalhome/launcher/window/WindowsView$buildPipActionPopupContent$actionContainer$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $pipAppWindow:Lcom/deepalhome/launcher/pip/PipAppWindow;

.field final synthetic this$0:Lcom/deepalhome/launcher/window/WindowsView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/window/WindowsView;Lcom/deepalhome/launcher/pip/PipAppWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/window/WindowsView$buildPipActionPopupContent$actionContainer$1$1;->this$0:Lcom/deepalhome/launcher/window/WindowsView;

    iput-object p2, p0, Lcom/deepalhome/launcher/window/WindowsView$buildPipActionPopupContent$actionContainer$1$1;->$pipAppWindow:Lcom/deepalhome/launcher/pip/PipAppWindow;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/deepalhome/launcher/window/WindowsView$buildPipActionPopupContent$actionContainer$1$1;->this$0:Lcom/deepalhome/launcher/window/WindowsView;

    invoke-static {v0}, Lcom/deepalhome/launcher/window/WindowsView;->access$dismissTopPopupWindows(Lcom/deepalhome/launcher/window/WindowsView;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/window/WindowsView$buildPipActionPopupContent$actionContainer$1$1;->$pipAppWindow:Lcom/deepalhome/launcher/pip/PipAppWindow;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/pip/PipAppWindow;->showAppPicker()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
