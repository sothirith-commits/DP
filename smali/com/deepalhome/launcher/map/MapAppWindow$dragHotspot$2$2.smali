.class public final Lcom/deepalhome/launcher/map/MapAppWindow$dragHotspot$2$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/map/MapAppWindow;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/map/MapAppWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/map/MapAppWindow$dragHotspot$2$2;->this$0:Lcom/deepalhome/launcher/map/MapAppWindow;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/deepalhome/launcher/map/MapAppWindow$dragHotspot$2$2;->this$0:Lcom/deepalhome/launcher/map/MapAppWindow;

    sget v0, Lcom/deepalhome/launcher/map/MapAppWindow;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/deepalhome/launcher/map/MapAppWindow;->findWindowView()Lcom/deepalhome/launcher/window/WindowView;

    move-result-object p0

    return-object p0
.end method
