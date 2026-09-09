.class public final Lcom/deepalhome/launcher/map/MapAppWindow$handleDragHotspotClick$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/map/MapAppWindow;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/map/MapAppWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/map/MapAppWindow$handleDragHotspotClick$1$1$1;->this$0:Lcom/deepalhome/launcher/map/MapAppWindow;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lcom/deepalhome/launcher/map/MapAppWindow$handleDragHotspotClick$1$1$1;->this$0:Lcom/deepalhome/launcher/map/MapAppWindow;

    new-instance v0, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda0;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/map/MapAppWindow;I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
