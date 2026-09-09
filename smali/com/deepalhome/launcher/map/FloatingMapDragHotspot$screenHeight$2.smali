.class public final Lcom/deepalhome/launcher/map/FloatingMapDragHotspot$screenHeight$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot$screenHeight$2;->this$0:Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot$screenHeight$2;->this$0:Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;

    iget-object p0, p0, Lcom/deepalhome/launcher/map/FloatingMapDragHotspot;->appContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
