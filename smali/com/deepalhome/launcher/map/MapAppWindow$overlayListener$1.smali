.class public final Lcom/deepalhome/launcher/map/MapAppWindow$overlayListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/map/MapAppWindow;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/map/MapAppWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/map/MapAppWindow$overlayListener$1;->this$0:Lcom/deepalhome/launcher/map/MapAppWindow;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string v0, "<anonymous parameter 0>"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/map/MapAppWindow$overlayListener$1;->this$0:Lcom/deepalhome/launcher/map/MapAppWindow;

    new-instance p1, Lcom/deepalhome/launcher/util/RootAccessState$$ExternalSyntheticLambda1;

    const/4 v0, 0x4

    invoke-direct {p1, p2, v0, p0}, Lcom/deepalhome/launcher/util/RootAccessState$$ExternalSyntheticLambda1;-><init>(ZILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
