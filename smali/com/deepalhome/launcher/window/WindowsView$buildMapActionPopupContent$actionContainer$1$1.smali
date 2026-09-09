.class public final Lcom/deepalhome/launcher/window/WindowsView$buildMapActionPopupContent$actionContainer$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $mapAppWindow:Lcom/deepalhome/launcher/map/MapAppWindow;

.field final synthetic this$0:Lcom/deepalhome/launcher/window/WindowsView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/window/WindowsView;Lcom/deepalhome/launcher/map/MapAppWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/window/WindowsView$buildMapActionPopupContent$actionContainer$1$1;->this$0:Lcom/deepalhome/launcher/window/WindowsView;

    iput-object p2, p0, Lcom/deepalhome/launcher/window/WindowsView$buildMapActionPopupContent$actionContainer$1$1;->$mapAppWindow:Lcom/deepalhome/launcher/map/MapAppWindow;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/window/WindowsView$buildMapActionPopupContent$actionContainer$1$1;->this$0:Lcom/deepalhome/launcher/window/WindowsView;

    invoke-static {v0}, Lcom/deepalhome/launcher/window/WindowsView;->access$dismissTopPopupWindows(Lcom/deepalhome/launcher/window/WindowsView;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/window/WindowsView$buildMapActionPopupContent$actionContainer$1$1;->$mapAppWindow:Lcom/deepalhome/launcher/map/MapAppWindow;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/util/AppUtil;->INSTANCE:Lcom/deepalhome/launcher/util/AppUtil;

    new-instance v1, Lcom/deepalhome/launcher/map/MapAppWindow$showMapPicker$1;

    invoke-direct {v1, p0}, Lcom/deepalhome/launcher/map/MapAppWindow$showMapPicker$1;-><init>(Lcom/deepalhome/launcher/map/MapAppWindow;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x1

    invoke-static {v1, p0}, Lcom/deepalhome/launcher/util/AppUtil;->loadAppsAsync(Lkotlin/jvm/functions/Function1;Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
