.class public final Lcom/deepalhome/launcher/map/MapAppWindow$dragHotspot$2$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/map/MapAppWindow;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/map/MapAppWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/map/MapAppWindow$dragHotspot$2$3;->this$0:Lcom/deepalhome/launcher/map/MapAppWindow;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lcom/deepalhome/launcher/map/MapAppWindow$dragHotspot$2$3;->this$0:Lcom/deepalhome/launcher/map/MapAppWindow;

    sget v0, Lcom/deepalhome/launcher/map/MapAppWindow;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/deepalhome/launcher/map/MapAppWindow;->findWindowView()Lcom/deepalhome/launcher/window/WindowView;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/deepalhome/launcher/map/MapController;->INSTANCE:Lcom/deepalhome/launcher/map/MapController;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/map/MapController;->hide()V

    sget-object v1, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/deepalhome/launcher/window/AppWindowsManager;->windowsView:Lcom/deepalhome/launcher/window/WindowsView;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/deepalhome/launcher/window/WindowsView;->showCardTypePicker(Lcom/deepalhome/launcher/window/WindowView;)V

    new-instance v0, Lcom/deepalhome/launcher/map/MapAppWindow$handleDragHotspotClick$1$1$1;

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/map/MapAppWindow$handleDragHotspotClick$1$1$1;-><init>(Lcom/deepalhome/launcher/map/MapAppWindow;)V

    invoke-virtual {v1, v0}, Lcom/deepalhome/launcher/window/WindowsView;->setPopupDismissCallback(Lkotlin/jvm/functions/Function0;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
