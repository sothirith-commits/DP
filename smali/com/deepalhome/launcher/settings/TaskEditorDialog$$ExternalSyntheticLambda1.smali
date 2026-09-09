.class public final synthetic Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Landroid/view/KeyEvent$Callback;

.field public final synthetic f$2:Landroidx/recyclerview/widget/RecyclerView;

.field public final synthetic f$3:Landroid/view/View;

.field public final synthetic f$4:Ljava/lang/Object;

.field public final synthetic f$5:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/app/AlertDialog;Landroid/widget/ImageView;Landroid/widget/TextView;Landroidx/recyclerview/widget/RecyclerView;Lcom/deepalhome/launcher/settings/ActionPickerDialog;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p6, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda1;->f$1:Landroid/view/KeyEvent$Callback;

    iput-object p3, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda1;->f$3:Landroid/view/View;

    iput-object p5, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda1;->f$4:Ljava/lang/Object;

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda1;->f$5:Landroid/view/View;

    iput-object p4, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda1;->f$2:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/deepalhome/launcher/settings/TaskEditorDialog;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/Button;I)V
    .locals 0

    iput p7, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda1;->f$1:Landroid/view/KeyEvent$Callback;

    iput-object p3, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda1;->f$2:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p4, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda1;->f$3:Landroid/view/View;

    iput-object p5, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda1;->f$4:Ljava/lang/Object;

    iput-object p6, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda1;->f$5:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 29

    move-object/from16 v0, p0

    iget v1, v0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    const-string v1, "$currentSubmenu"

    iget-object v2, v0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    move-object v8, v2

    check-cast v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "this$0"

    iget-object v2, v0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda1;->f$4:Ljava/lang/Object;

    move-object v7, v2

    check-cast v7, Lcom/deepalhome/launcher/settings/ActionPickerDialog;

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object v2, v0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda1;->f$1:Landroid/view/KeyEvent$Callback;

    move-object v3, v2

    check-cast v3, Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object v1, v0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda1;->f$3:Landroid/view/View;

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    iget-object v1, v0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda1;->f$5:Landroid/view/View;

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    iget-object v6, v0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda1;->f$2:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static/range {v3 .. v8}, Lcom/deepalhome/launcher/settings/ActionPickerDialog;->show$renderOptions(Landroid/app/AlertDialog;Landroid/widget/ImageView;Landroid/widget/TextView;Landroidx/recyclerview/widget/RecyclerView;Lcom/deepalhome/launcher/settings/ActionPickerDialog;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, v0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    const-string v2, "this$0"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v9, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$7$1;

    iget-object v2, v0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda1;->f$4:Ljava/lang/Object;

    move-object v4, v2

    check-cast v4, Landroid/widget/Button;

    iget-object v2, v0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda1;->f$5:Landroid/view/View;

    move-object v5, v2

    check-cast v5, Landroid/widget/Button;

    iget-object v2, v0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda1;->f$1:Landroid/view/KeyEvent$Callback;

    move-object v3, v2

    check-cast v3, Landroid/view/View;

    iget-object v7, v0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda1;->f$2:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda1;->f$3:Landroid/view/View;

    move-object v6, v0

    check-cast v6, Landroid/widget/LinearLayout;

    move-object v2, v9

    move-object v8, v1

    invoke-direct/range {v2 .. v8}, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$7$1;-><init>(Landroid/view/View;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Lcom/deepalhome/launcher/settings/TaskEditorDialog;)V

    iget-object v0, v1, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0e001e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0b0436

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/cardview/widget/CardView;

    const v5, 0x7f0b0434

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Landroid/widget/LinearLayout;

    const v5, 0x7f0b0435

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Landroid/widget/LinearLayout;

    const v5, 0x7f0b0437

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0b00a9

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const v7, 0x7f0b0433

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    const v8, 0x7f0b004f

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    move-object v12, v8

    check-cast v12, Landroidx/recyclerview/widget/RecyclerView;

    iget v8, v1, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->bgColor:I

    invoke-virtual {v3, v8}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    iget v3, v1, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->textColor:I

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v3, v8}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(I)V

    invoke-virtual {v12, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {v11}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v11}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v11}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    invoke-virtual {v11}, Landroid/view/View;->getPaddingBottom()I

    move-result v13

    filled-new-array {v2, v3, v8, v13}, [I

    move-result-object v2

    new-instance v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v3, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_1

    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v4, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v12, v3}, Landroid/view/View;->setVisibility(I)V

    aget v3, v2, v3

    const/4 v4, 0x1

    aget v4, v2, v4

    const/4 v13, 0x2

    aget v14, v2, v13

    const/4 v15, 0x3

    aget v2, v2, v15

    invoke-virtual {v11, v3, v4, v14, v2}, Landroid/view/View;->setPadding(IIII)V

    const-string v2, "Add condition"

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda8;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda8;-><init>(Landroid/app/AlertDialog;I)V

    invoke-virtual {v6, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lkotlin/Triple;

    const v3, 0x7f080130

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "Time range"

    const-string v6, "time_range"

    invoke-direct {v2, v4, v5, v6}, Lkotlin/Triple;-><init>(Ljava/lang/Integer;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Lkotlin/Triple;

    const v14, 0x7f08012e

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v13, "Speed range"

    const-string v14, "speed_range"

    invoke-direct {v4, v15, v13, v14}, Lkotlin/Triple;-><init>(Ljava/lang/Integer;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v15, Lkotlin/Triple;

    const v16, 0x7f08012d

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v17, v11

    const-string v11, "Long press"

    move-object/from16 v18, v12

    const-string v12, "button_press_long"

    invoke-direct {v15, v3, v11, v12}, Lkotlin/Triple;-><init>(Ljava/lang/Integer;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lkotlin/Triple;

    const v19, 0x7f08012f

    move-object/from16 v20, v10

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v21, v8

    const-string v8, "Short press"

    move-object/from16 v22, v7

    const-string v7, "button_press_short"

    invoke-direct {v3, v10, v8, v7}, Lkotlin/Triple;-><init>(Ljava/lang/Integer;Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v2, v4, v15, v3}, [Lkotlin/Triple;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lkotlin/Triple;

    const v4, 0x7f080130

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v4, v5, v6}, Lkotlin/Triple;-><init>(Ljava/lang/Integer;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Lkotlin/Triple;

    const v5, 0x7f08012e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, v5, v13, v14}, Lkotlin/Triple;-><init>(Ljava/lang/Integer;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Lkotlin/Triple;

    const v6, 0x7f080131

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v10, "WiFi connected"

    const-string v13, "wifi_state_connected"

    invoke-direct {v5, v6, v10, v13}, Lkotlin/Triple;-><init>(Ljava/lang/Integer;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v6, Lkotlin/Triple;

    const v10, 0x7f080132

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v13, "WiFi disconnected"

    const-string v14, "wifi_state_disconnected"

    invoke-direct {v6, v10, v13, v14}, Lkotlin/Triple;-><init>(Ljava/lang/Integer;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v10, Lkotlin/Triple;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v10, v13, v11, v12}, Lkotlin/Triple;-><init>(Ljava/lang/Integer;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v11, Lkotlin/Triple;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v11, v12, v8, v7}, Lkotlin/Triple;-><init>(Ljava/lang/Integer;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    move-object/from16 v26, v6

    move-object/from16 v27, v10

    move-object/from16 v28, v11

    filled-new-array/range {v23 .. v28}, [Lkotlin/Triple;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sget-object v4, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v2

    goto :goto_1

    :cond_2
    move-object v4, v3

    :goto_1
    new-instance v12, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showConditionTypePicker$renderConditionPicker$3;

    move-object v2, v12

    move-object v3, v1

    move-object v5, v9

    move-object v6, v0

    move-object/from16 v7, v22

    move-object/from16 v8, v21

    move-object/from16 v9, v20

    move-object/from16 v10, v18

    move-object/from16 v11, v17

    invoke-direct/range {v2 .. v11}, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showConditionTypePicker$renderConditionPicker$3;-><init>(Lcom/deepalhome/launcher/settings/TaskEditorDialog;Ljava/util/List;Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$7$1;Landroid/app/AlertDialog;Landroid/widget/FrameLayout;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/LinearLayout;)V

    move-object/from16 v8, v18

    invoke-virtual {v8, v12}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f06038f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getScreenWidth()I

    move-result v2

    const/4 v3, 0x2

    div-int/2addr v2, v3

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    :cond_3
    sget-object v1, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->INSTANCE:Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->applyTransparentSystemBars(Landroid/view/Window;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    :pswitch_1
    const-string v1, "this$0"

    iget-object v2, v0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    move-object v8, v2

    check-cast v8, Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/deepalhome/launcher/task/model/ConditionLogic;->OR:Lcom/deepalhome/launcher/task/model/ConditionLogic;

    iput-object v1, v8, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->conditionLogic:Lcom/deepalhome/launcher/task/model/ConditionLogic;

    iget-object v1, v0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda1;->f$1:Landroid/view/KeyEvent$Callback;

    move-object v3, v1

    check-cast v3, Landroid/view/View;

    iget-object v7, v0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda1;->f$2:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda1;->f$3:Landroid/view/View;

    move-object v6, v1

    check-cast v6, Landroid/widget/LinearLayout;

    iget-object v1, v0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda1;->f$4:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Landroid/widget/Button;

    iget-object v0, v0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda1;->f$5:Landroid/view/View;

    move-object v5, v0

    check-cast v5, Landroid/widget/Button;

    invoke-static/range {v3 .. v8}, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->setupViews$updateConditionLogicUI(Landroid/view/View;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Lcom/deepalhome/launcher/settings/TaskEditorDialog;)V

    return-void

    :pswitch_2
    const-string v1, "this$0"

    iget-object v2, v0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    move-object v8, v2

    check-cast v8, Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/deepalhome/launcher/task/model/ConditionLogic;->AND:Lcom/deepalhome/launcher/task/model/ConditionLogic;

    iput-object v1, v8, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->conditionLogic:Lcom/deepalhome/launcher/task/model/ConditionLogic;

    iget-object v1, v0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda1;->f$1:Landroid/view/KeyEvent$Callback;

    move-object v3, v1

    check-cast v3, Landroid/view/View;

    iget-object v7, v0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda1;->f$2:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda1;->f$3:Landroid/view/View;

    move-object v6, v1

    check-cast v6, Landroid/widget/LinearLayout;

    iget-object v1, v0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda1;->f$4:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Landroid/widget/Button;

    iget-object v0, v0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda1;->f$5:Landroid/view/View;

    move-object v5, v0

    check-cast v5, Landroid/widget/Button;

    invoke-static/range {v3 .. v8}, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->setupViews$updateConditionLogicUI(Landroid/view/View;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Lcom/deepalhome/launcher/settings/TaskEditorDialog;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method