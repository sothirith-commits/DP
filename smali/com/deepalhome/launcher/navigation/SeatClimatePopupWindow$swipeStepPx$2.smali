.class public final Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow$swipeStepPx$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow$swipeStepPx$2;->this$0:Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    sget-object v0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->Companion:Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow$Companion;

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow$swipeStepPx$2;->this$0:Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "context"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    const/high16 v1, 0x42600000    # 56.0f

    invoke-static {v0, v1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
