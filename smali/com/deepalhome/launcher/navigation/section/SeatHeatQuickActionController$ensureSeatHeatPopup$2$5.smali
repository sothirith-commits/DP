.class public final Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController$ensureSeatHeatPopup$2$5;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController$ensureSeatHeatPopup$2$5;->this$0:Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController$ensureSeatHeatPopup$2$5;->this$0:Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;->access$clearSeatHeatPreview(Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
