.class public final Lcom/deepalhome/launcher/navigation/section/AirConditionController$ensurePopup$1$4;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/navigation/section/AirConditionController;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/navigation/section/AirConditionController;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController$ensurePopup$1$4;->this$0:Lcom/deepalhome/launcher/navigation/section/AirConditionController;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/deepalhome/launcher/navigation/AirConditionMode;

    const-string v0, "mode"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController$ensurePopup$1$4;->this$0:Lcom/deepalhome/launcher/navigation/section/AirConditionController;

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->access$applyMode(Lcom/deepalhome/launcher/navigation/section/AirConditionController;Lcom/deepalhome/launcher/navigation/AirConditionMode;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
