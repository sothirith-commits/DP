.class public final Lcom/deepalhome/launcher/map/MapAppWindow$barVisibilityListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/map/MapAppWindow;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/map/MapAppWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/map/MapAppWindow$barVisibilityListener$1;->this$0:Lcom/deepalhome/launcher/map/MapAppWindow;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    iget-object p0, p0, Lcom/deepalhome/launcher/map/MapAppWindow$barVisibilityListener$1;->this$0:Lcom/deepalhome/launcher/map/MapAppWindow;

    new-instance p1, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda0;

    const/4 v0, 0x6

    invoke-direct {p1, p0, v0}, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/map/MapAppWindow;I)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
