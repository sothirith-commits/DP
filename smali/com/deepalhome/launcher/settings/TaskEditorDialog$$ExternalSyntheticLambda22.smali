.class public final synthetic Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/google/android/material/slider/RangeSlider;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$2:Landroid/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/slider/RangeSlider;Lkotlin/jvm/functions/Function1;Landroid/app/AlertDialog;I)V
    .locals 0

    iput p4, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda22;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda22;->f$0:Lcom/google/android/material/slider/RangeSlider;

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda22;->f$1:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda22;->f$2:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget p1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda22;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    const-string p1, "$onSelected"

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda22;->f$1:Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda22;->f$0:Lcom/google/android/material/slider/RangeSlider;

    invoke-virtual {p1}, Lcom/google/android/material/slider/RangeSlider;->getValues()Ljava/util/List;

    move-result-object p1

    const-string v1, "getValues(...)"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    float-to-int p1, p1

    new-instance v2, Lcom/deepalhome/launcher/task/model/TaskTrigger$SpeedRange;

    invoke-direct {v2, v1, p1}, Lcom/deepalhome/launcher/task/model/TaskTrigger$SpeedRange;-><init>(II)V

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda22;->f$2:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void

    :pswitch_0
    const-string p1, "$onSelected"

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda22;->f$1:Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda22;->f$0:Lcom/google/android/material/slider/RangeSlider;

    invoke-virtual {p1}, Lcom/google/android/material/slider/RangeSlider;->getValues()Ljava/util/List;

    move-result-object p1

    const-string v1, "getValues(...)"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    float-to-int p1, p1

    new-instance v2, Lcom/deepalhome/launcher/task/model/TaskCondition$SpeedRange;

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    const/16 v4, 0xc8

    if-ne p1, v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_1
    invoke-direct {v2, v1, v3}, Lcom/deepalhome/launcher/task/model/TaskCondition$SpeedRange;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda22;->f$2:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
