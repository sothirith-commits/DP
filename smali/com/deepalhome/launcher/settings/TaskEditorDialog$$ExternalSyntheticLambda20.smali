.class public final synthetic Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/google/android/material/slider/RangeSlider;

.field public final synthetic f$1:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/slider/RangeSlider;Landroid/widget/TextView;I)V
    .locals 0

    iput p3, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda20;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda20;->f$0:Lcom/google/android/material/slider/RangeSlider;

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda20;->f$1:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onValueChange(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda20;->$r8$classId:I

    check-cast p1, Lcom/google/android/material/slider/RangeSlider;

    packed-switch v0, :pswitch_data_0

    const-string v0, "<anonymous parameter 0>"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda20;->f$0:Lcom/google/android/material/slider/RangeSlider;

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda20;->f$1:Landroid/widget/TextView;

    invoke-static {p1, p0}, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$3;->invoke$updateSpeedRangeText(Lcom/google/android/material/slider/RangeSlider;Landroid/widget/TextView;)V

    return-void

    :pswitch_0
    const-string v0, "<anonymous parameter 0>"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda20;->f$0:Lcom/google/android/material/slider/RangeSlider;

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda20;->f$1:Landroid/widget/TextView;

    invoke-static {p1, p0}, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->showConditionTypePicker$renderSpeedRangeConfig$updateSpeedRangeText(Lcom/google/android/material/slider/RangeSlider;Landroid/widget/TextView;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
