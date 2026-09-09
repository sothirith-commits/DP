.class public final Lcom/deepalhome/launcher/navigation/section/AirConditionController$performTemperaturePrimaryActionWithDebounce$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/navigation/section/AirConditionController;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/navigation/section/AirConditionController;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController$performTemperaturePrimaryActionWithDebounce$1;->this$0:Lcom/deepalhome/launcher/navigation/section/AirConditionController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController$performTemperaturePrimaryActionWithDebounce$1;->this$0:Lcom/deepalhome/launcher/navigation/section/AirConditionController;

    invoke-static {p0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->access$performTemperaturePrimaryAction(Lcom/deepalhome/launcher/navigation/section/AirConditionController;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
