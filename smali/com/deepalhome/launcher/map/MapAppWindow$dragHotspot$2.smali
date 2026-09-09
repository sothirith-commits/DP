.class public final Lcom/deepalhome/launcher/map/MapAppWindow$dragHotspot$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic this$0:Lcom/deepalhome/launcher/map/MapAppWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/deepalhome/launcher/map/MapAppWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/map/MapAppWindow$dragHotspot$2;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/deepalhome/launcher/map/MapAppWindow$dragHotspot$2;->this$0:Lcom/deepalhome/launcher/map/MapAppWindow;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    new-instance v0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;

    iget-object v1, p0, Lcom/deepalhome/launcher/map/MapAppWindow$dragHotspot$2;->$context:Landroid/content/Context;

    new-instance v2, Lcom/deepalhome/launcher/map/MapAppWindow$dragHotspot$2$1;

    iget-object p0, p0, Lcom/deepalhome/launcher/map/MapAppWindow$dragHotspot$2;->this$0:Lcom/deepalhome/launcher/map/MapAppWindow;

    invoke-direct {v2, p0}, Lcom/deepalhome/launcher/map/MapAppWindow$dragHotspot$2$1;-><init>(Lcom/deepalhome/launcher/map/MapAppWindow;)V

    new-instance v3, Lcom/deepalhome/launcher/map/MapAppWindow$dragHotspot$2$2;

    invoke-direct {v3, p0}, Lcom/deepalhome/launcher/map/MapAppWindow$dragHotspot$2$2;-><init>(Lcom/deepalhome/launcher/map/MapAppWindow;)V

    new-instance v4, Lcom/deepalhome/launcher/map/MapAppWindow$dragHotspot$2$3;

    invoke-direct {v4, p0}, Lcom/deepalhome/launcher/map/MapAppWindow$dragHotspot$2$3;-><init>(Lcom/deepalhome/launcher/map/MapAppWindow;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;-><init>(Landroid/content/Context;Lcom/deepalhome/launcher/map/MapAppWindow$dragHotspot$2$1;Lcom/deepalhome/launcher/map/MapAppWindow$dragHotspot$2$2;Lcom/deepalhome/launcher/map/MapAppWindow$dragHotspot$2$3;)V

    return-object v0
.end method
