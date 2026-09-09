.class public final Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow$swipeStartThresholdPx$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow$swipeStartThresholdPx$2;->this$0:Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow;->Companion:Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow$Companion;

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow$swipeStartThresholdPx$2;->this$0:Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow;

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow;->context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow$Companion;->resolveSwipeStartThresholdPx(Landroid/content/Context;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
