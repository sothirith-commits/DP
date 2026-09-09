.class public final Lcom/deepalhome/launcher/map/MapAppWindow$dragHotspot$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/map/MapAppWindow;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/map/MapAppWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/map/MapAppWindow$dragHotspot$2$1;->this$0:Lcom/deepalhome/launcher/map/MapAppWindow;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lcom/deepalhome/launcher/map/MapAppWindow$dragHotspot$2$1;->this$0:Lcom/deepalhome/launcher/map/MapAppWindow;

    sget v0, Lcom/deepalhome/launcher/map/MapAppWindow;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/deepalhome/launcher/map/MapAppWindow;->findWindowView()Lcom/deepalhome/launcher/window/WindowView;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    instance-of v1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout;

    if-eqz v1, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/deepalhome/launcher/view/DragLinearLayout;

    :cond_1
    return-object v0
.end method
