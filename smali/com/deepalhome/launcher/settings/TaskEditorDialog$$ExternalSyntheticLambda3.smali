.class public final synthetic Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

.field public final synthetic f$1:Landroid/widget/ImageView;

.field public final synthetic f$2:Landroid/widget/TextView;

.field public final synthetic f$3:Landroid/view/View;

.field public final synthetic f$4:Landroidx/recyclerview/widget/RecyclerView;

.field public final synthetic f$5:Landroid/widget/LinearLayout;

.field public final synthetic f$6:Landroid/widget/Button;

.field public final synthetic f$7:Landroid/widget/Button;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/settings/TaskEditorDialog;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda3;->f$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda3;->f$1:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda3;->f$2:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda3;->f$3:Landroid/view/View;

    iput-object p5, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda3;->f$4:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p6, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda3;->f$5:Landroid/widget/LinearLayout;

    iput-object p7, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda3;->f$6:Landroid/widget/Button;

    iput-object p8, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda3;->f$7:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 30

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda3;->f$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    const-string v1, "this$0"

    invoke-static {v1, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v16, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$6$1;

    iget-object v7, v0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda3;->f$6:Landroid/widget/Button;

    iget-object v8, v0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda3;->f$7:Landroid/widget/Button;

    iget-object v2, v0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda3;->f$1:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda3;->f$2:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda3;->f$3:Landroid/view/View;

    iget-object v5, v0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda3;->f$4:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v6, v0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda3;->f$5:Landroid/widget/LinearLayout;

    move-object/from16 v0, v16

    move-object v1, v15

    invoke-direct/range {v0 .. v8}, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$6$1;-><init>(Lcom/deepalhome/launcher/settings/TaskEditorDialog;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/Button;)V

    iget-object v0, v15, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e001e

    const/4 v14, 0x0

    invoke-virtual {v1, v2, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b0436

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/cardview/widget/CardView;

    const v3, 0x7f0b0434

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Landroid/widget/LinearLayout;

    const v3, 0x7f0b0435

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Landroid/widget/LinearLayout;

    const v3, 0x7f0b0437

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/widget/TextView;

    const v3, 0x7f0b00a9

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Landroid/widget/ImageView;

    const v3, 0x7f0b0433

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Landroid/widget/FrameLayout;

    const v3, 0x7f0b004f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Landroidx/recyclerview/widget/RecyclerView;

    iget v3, v15, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->bgColor:I

    invoke-virtual {v2, v3}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    const v2, 0x7f13046e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v2, v15, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->textColor:I

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v12, v2, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v20

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(I)V

    invoke-virtual {v11, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v21

    new-instance v22, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct/range {v22 .. v22}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v6, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$1;

    move-object v0, v6

    move-object v1, v13

    move-object v2, v15

    move-object v3, v12

    move-object v4, v11

    move-object/from16 v5, v20

    move-object/from16 p1, v15

    move-object v15, v6

    move-object/from16 v6, v22

    move-object/from16 p0, v7

    move-object/from16 v7, v18

    move-object/from16 v23, v8

    move-object/from16 v8, v17

    move-object/from16 v24, v9

    move-object/from16 v9, v21

    move-object/from16 v25, v10

    move-object/from16 v10, v19

    move-object/from16 v26, v11

    move-object/from16 v11, v24

    move-object/from16 v27, v12

    move-object/from16 v12, v23

    move-object/from16 v28, v13

    move-object/from16 v13, v16

    move-object/from16 v29, v14

    move-object/from16 v14, p0

    invoke-direct/range {v0 .. v14}, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$1;-><init>(Landroid/widget/TextView;Lcom/deepalhome/launcher/settings/TaskEditorDialog;Landroid/widget/ImageView;Landroidx/recyclerview/widget/RecyclerView;Landroid/app/AlertDialog;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;[ILandroid/widget/FrameLayout;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$6$1;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    move-object/from16 v13, v25

    iput-object v15, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v14, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$2;

    move-object v0, v14

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    move-object/from16 v3, v26

    move-object/from16 v4, v22

    move-object/from16 v5, v18

    move-object/from16 v6, v17

    move-object/from16 v7, v21

    move-object/from16 v8, p1

    move-object/from16 v9, v20

    move-object v11, v13

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$2;-><init>(Landroid/widget/TextView;Landroid/widget/ImageView;Landroidx/recyclerview/widget/RecyclerView;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;[ILcom/deepalhome/launcher/settings/TaskEditorDialog;Landroid/app/AlertDialog;Landroid/widget/FrameLayout;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$6$1;)V

    move-object/from16 v0, v24

    iput-object v14, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v9, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$3;

    move-object v0, v9

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    move-object/from16 v4, v16

    move-object/from16 v5, v22

    move-object/from16 v6, v18

    move-object/from16 v7, v26

    move-object/from16 v8, v17

    invoke-direct/range {v0 .. v8}, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$3;-><init>(Lcom/deepalhome/launcher/settings/TaskEditorDialog;Landroid/widget/FrameLayout;Landroid/app/AlertDialog;Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$6$1;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/LinearLayout;)V

    move-object/from16 v0, v23

    iput-object v9, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v14, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$4;

    move-object v0, v14

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    move-object/from16 v3, v26

    move-object/from16 v4, v22

    move-object/from16 v5, v18

    move-object/from16 v6, v17

    move-object/from16 v7, v21

    move-object/from16 v8, p1

    move-object/from16 v9, v20

    invoke-direct/range {v0 .. v12}, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$4;-><init>(Landroid/widget/TextView;Landroid/widget/ImageView;Landroidx/recyclerview/widget/RecyclerView;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;[ILcom/deepalhome/launcher/settings/TaskEditorDialog;Landroid/app/AlertDialog;Landroid/widget/FrameLayout;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$6$1;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object v0, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v0, :cond_1

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    invoke-virtual/range {v20 .. v20}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f06038f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getScreenWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->INSTANCE:Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;

    invoke-virtual/range {v20 .. v20}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->applyTransparentSystemBars(Landroid/view/Window;)V

    invoke-virtual/range {v20 .. v20}, Landroid/app/Dialog;->show()V

    return-void

    :cond_1
    const-string v0, "renderTriggerPicker"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v29
.end method
