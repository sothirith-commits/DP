.class public final Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $contentContainer:Landroid/widget/FrameLayout;

.field final synthetic $contentRoot:Landroid/widget/LinearLayout;

.field final synthetic $customContent:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef;"
        }
    .end annotation
.end field

.field final synthetic $dialog:Landroid/app/AlertDialog;

.field final synthetic $gridRv:Landroidx/recyclerview/widget/RecyclerView;

.field final synthetic $headerLayout:Landroid/widget/LinearLayout;

.field final synthetic $onSelected:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/settings/TaskEditorDialog;Landroid/widget/FrameLayout;Landroid/app/AlertDialog;Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$6$1;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$3;->this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$3;->$contentContainer:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$3;->$dialog:Landroid/app/AlertDialog;

    iput-object p4, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$3;->$onSelected:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$3;->$customContent:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p6, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$3;->$headerLayout:Landroid/widget/LinearLayout;

    iput-object p7, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$3;->$gridRv:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p8, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$3;->$contentRoot:Landroid/widget/LinearLayout;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static final invoke$updateSpeedRangeText(Lcom/google/android/material/slider/RangeSlider;Landroid/widget/TextView;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/material/slider/RangeSlider;->getValues()Ljava/util/List;

    move-result-object p0

    const-string v0, "getValues(...)"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    float-to-int v0, v0

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    float-to-int p0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " km/h"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$3;->this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    iget-object v1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$3;->$contentContainer:Landroid/widget/FrameLayout;

    iget-object v0, v0, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0e003b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.cardview.widget.CardView"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v0, Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v4, -0x2

    invoke-direct {v0, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f0b0184

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0b0533

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v5, 0x7f0b0532

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/slider/RangeSlider;

    const v6, 0x7f0b038d

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0b0382

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0b00eb

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    const v9, 0x7f0b0129

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iget-object v10, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$3;->this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    iget v10, v10, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->textColor:I

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$3;->this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    iget v0, v0, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->textColor:I

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$3;->this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    iget v0, v0, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->hintColor:I

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$3;->this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    iget v0, v0, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->hintColor:I

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$3;->this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    iget-object v0, v0, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->context:Landroid/content/Context;

    const v6, 0x7f060019

    invoke-virtual {v0, v6}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    const-string v6, "valueOf(...)"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$3;->this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    iget-object v7, v7, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->context:Landroid/content/Context;

    const v10, 0x7f06001a

    invoke-virtual {v7, v10}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-static {v7}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5, v0}, Lcom/google/android/material/slider/RangeSlider;->setTrackActiveTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v5, v0}, Lcom/google/android/material/slider/RangeSlider;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v5, v7}, Lcom/google/android/material/slider/RangeSlider;->setTrackInactiveTintList(Landroid/content/res/ColorStateList;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/high16 v6, 0x43480000    # 200.0f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    filled-new-array {v0, v6}, [Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/google/android/material/slider/RangeSlider;->setValues(Ljava/util/List;)V

    invoke-static {v5, v2}, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$3;->invoke$updateSpeedRangeText(Lcom/google/android/material/slider/RangeSlider;Landroid/widget/TextView;)V

    new-instance v0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda20;

    const/4 v6, 0x1

    invoke-direct {v0, v5, v2, v6}, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda20;-><init>(Lcom/google/android/material/slider/RangeSlider;Landroid/widget/TextView;I)V

    iget-object v2, v5, Lcom/google/android/material/slider/BaseSlider;->changeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$3;->$dialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda8;

    const/16 v6, 0x9

    invoke-direct {v2, v0, v6}, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda8;-><init>(Landroid/app/AlertDialog;I)V

    invoke-virtual {v8, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$3;->$onSelected:Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$3;->$dialog:Landroid/app/AlertDialog;

    new-instance v6, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda22;

    const/4 v7, 0x1

    invoke-direct {v6, v5, v0, v2, v7}, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda22;-><init>(Lcom/google/android/material/slider/RangeSlider;Lkotlin/jvm/functions/Function1;Landroid/app/AlertDialog;I)V

    invoke-virtual {v9, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$3;->$customContent:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$3;->$headerLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$3;->$gridRv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v6, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$3;->$contentRoot:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$3;->$contentContainer:Landroid/widget/FrameLayout;

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$3;->$dialog:Landroid/app/AlertDialog;

    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getScreenWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    iget-object v9, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v9, Landroid/view/View;

    if-eqz v9, :cond_0

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v6, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, v8, v4}, Landroid/view/Window;->setLayout(II)V

    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
