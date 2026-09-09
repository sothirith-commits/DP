.class public final synthetic Lcom/deepalhome/launcher/navigation/section/AirConditionController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/internal/Ref$FloatRef;

.field public final synthetic f$1:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic f$2:Lcom/deepalhome/launcher/navigation/section/AirConditionController;

.field public final synthetic f$3:Landroid/view/GestureDetector;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/deepalhome/launcher/navigation/section/AirConditionController;Landroid/view/GestureDetector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController$$ExternalSyntheticLambda5;->f$0:Lkotlin/jvm/internal/Ref$FloatRef;

    iput-object p2, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController$$ExternalSyntheticLambda5;->f$1:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p3, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController$$ExternalSyntheticLambda5;->f$2:Lcom/deepalhome/launcher/navigation/section/AirConditionController;

    iput-object p4, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController$$ExternalSyntheticLambda5;->f$3:Landroid/view/GestureDetector;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    iget-object v2, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController$$ExternalSyntheticLambda5;->f$2:Lcom/deepalhome/launcher/navigation/section/AirConditionController;

    iget-object v3, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController$$ExternalSyntheticLambda5;->f$3:Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController$$ExternalSyntheticLambda5;->f$0:Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController$$ExternalSyntheticLambda5;->f$1:Lkotlin/jvm/internal/Ref$BooleanRef;

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->$r8$lambda$vaJx39wUPoPyQ-uQ2xF88QOLdvc(Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/deepalhome/launcher/navigation/section/AirConditionController;Landroid/view/GestureDetector;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
