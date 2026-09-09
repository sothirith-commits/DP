.class public final Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$ensureSeatVentPopup$2$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$ensureSeatVentPopup$2$2;->this$0:Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$ensureSeatVentPopup$2$2;->this$0:Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->access$previewSeatVentLevel(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
