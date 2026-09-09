.class public final synthetic Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/app/Dialog;

.field public final synthetic f$1:Lcom/deepalhome/launcher/settings/AdvancedSettingsView;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Dialog;Lcom/deepalhome/launcher/settings/AdvancedSettingsView;I)V
    .locals 0

    iput p3, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda22;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda22;->f$0:Landroid/app/Dialog;

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda22;->f$1:Lcom/deepalhome/launcher/settings/AdvancedSettingsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 38

    move-object/from16 v0, p0

    const-string v1, "null cannot be cast to non-null type androidx.cardview.widget.CardView"

    const v2, 0x7f130182

    const v3, 0x7f130184

    const/16 v4, 0x8

    const-string v5, "inflate(...)"

    iget-object v7, v0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda22;->f$1:Lcom/deepalhome/launcher/settings/AdvancedSettingsView;

    const/4 v8, 0x2

    const/4 v9, 0x0

    const-string v10, "this$0"

    iget-object v11, v0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda22;->f$0:Landroid/app/Dialog;

    const-string v12, "$dialog"

    const/4 v13, 0x1

    iget v14, v0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda22;->$r8$classId:I

    packed-switch v14, :pswitch_data_0

    sget v0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->$r8$clinit:I

    invoke-static {v12, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v10, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v11}, Landroid/app/Dialog;->dismiss()V

    invoke-virtual {v7}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->resolveActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f13006e

    invoke-static {v0, v1, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "file_browser_mode"

    const-string v3, "config_import"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "file_browser_allow_multiple"

    invoke-virtual {v1, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v2, 0x4b4

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :pswitch_0
    sget v0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->$r8$clinit:I

    invoke-static {v12, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v10, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v11}, Landroid/app/Dialog;->dismiss()V

    sget-object v0, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result v0

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v0, :cond_1

    const v2, 0x7f06038c

    goto :goto_1

    :cond_1
    const v2, 0x7f06038b

    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060389

    const v4, 0x7f06038a

    if-eqz v0, :cond_2

    move v5, v4

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    invoke-virtual {v2, v5}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v10, 0x7f060019

    invoke-virtual {v5, v10}, Landroid/content/Context;->getColor(I)I

    move-result v18

    if-eqz v0, :cond_3

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v10, 0x7f06003a

    invoke-virtual {v5, v10}, Landroid/content/Context;->getColor(I)I

    move-result v5

    goto :goto_3

    :cond_3
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v10, 0x7f060039

    invoke-virtual {v5, v10}, Landroid/content/Context;->getColor(I)I

    move-result v5

    :goto_3
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    if-eqz v0, :cond_4

    move v3, v4

    :cond_4
    invoke-virtual {v10, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/16 v4, 0x34

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v4, v4

    const/16 v10, 0xc

    int-to-float v10, v10

    mul-float/2addr v10, v3

    float-to-int v11, v10

    const/high16 v12, 0x3fc00000    # 1.5f

    mul-float/2addr v12, v3

    float-to-int v12, v12

    new-instance v15, Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v15, v14}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const v14, 0x81001

    invoke-virtual {v15, v14}, Landroid/widget/TextView;->setInputType(I)V

    new-instance v14, Landroid/text/InputFilter$LengthFilter;

    const/4 v6, 0x6

    invoke-direct {v14, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    new-instance v16, Landroid/text/InputFilter$AllCaps;

    invoke-direct/range {v16 .. v16}, Landroid/text/InputFilter$AllCaps;-><init>()V

    new-array v8, v8, [Landroid/text/InputFilter;

    aput-object v14, v8, v9

    aput-object v16, v8, v13

    invoke-virtual {v15, v8}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    invoke-virtual {v15, v9}, Landroid/widget/TextView;->setCursorVisible(Z)V

    invoke-virtual {v15, v9}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v15, v9}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v15, v8}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v15, v13}, Landroid/widget/TextView;->setHeight(I)V

    invoke-virtual {v15, v9, v9, v9, v9}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v15, v9}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {v15, v9}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v15, v9}, Landroid/view/View;->setLongClickable(Z)V

    new-instance v8, Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v8, v14}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v14, 0x11

    invoke-virtual {v8, v14}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v13, 0x18

    int-to-float v13, v13

    mul-float/2addr v13, v3

    float-to-int v13, v13

    const/16 v6, 0x10

    int-to-float v6, v6

    mul-float/2addr v6, v3

    float-to-int v6, v6

    invoke-virtual {v8, v9, v13, v9, v6}, Landroid/view/View;->setPadding(IIII)V

    new-instance v6, Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v6, v13}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    const v9, 0x7f130068

    invoke-virtual {v13, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v2, 0x42000000    # 32.0f

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v13, -0x1

    invoke-direct {v2, v13, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v9, 0x14

    int-to-float v9, v9

    mul-float/2addr v9, v3

    float-to-int v3, v9

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v8, v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v2, v14}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v6, 0x6

    new-array v9, v6, [Landroid/widget/TextView;

    :goto_4
    if-ge v3, v6, :cond_6

    new-instance v6, Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v6, v13}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v13, 0x41b00000    # 22.0f

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setTextSize(F)V

    sget-object v13, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v13, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v13}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v13, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v13, v12, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {v13, v10}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v6, v13}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v13, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-lez v3, :cond_5

    invoke-virtual {v13, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :cond_5
    invoke-virtual {v2, v6, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v13, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    aput-object v6, v9, v3

    const/4 v6, 0x1

    add-int/2addr v3, v6

    const/4 v6, 0x6

    const/4 v13, -0x1

    goto :goto_4

    :cond_6
    const/4 v6, 0x1

    invoke-virtual {v8, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v15, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/deepalhome/launcher/settings/ScheduledTaskSettingsView$showImportDialog$2;

    const/16 v20, 0x1

    move-object v14, v1

    move-object v2, v15

    move-object/from16 v16, v9

    move/from16 v17, v12

    move/from16 v19, v0

    invoke-direct/range {v14 .. v20}, Lcom/deepalhome/launcher/settings/ScheduledTaskSettingsView$showImportDialog$2;-><init>(Landroid/widget/EditText;Ljava/lang/Object;IIII)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    sget-object v19, Lcom/deepalhome/launcher/util/DialogUtil;->INSTANCE:Lcom/deepalhome/launcher/util/DialogUtil;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f13006b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v35, 0x0

    const v37, 0x7ffa2

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x0

    const/16 v26, 0x1

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v36, 0x0

    move-object/from16 v23, v8

    invoke-static/range {v19 .. v37}, Lcom/deepalhome/launcher/util/DialogUtil;->showDialog$default(Lcom/deepalhome/launcher/util/DialogUtil;Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;ZLjava/lang/String;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroid/app/Activity;ILjava/lang/Integer;Ljava/lang/Integer;ZZZI)Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/deepalhome/launcher/util/DialogInputInteractionController;

    const v3, 0x7f0b04c8

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_7

    move-object/from16 v22, v8

    goto :goto_5

    :cond_7
    move-object/from16 v22, v3

    :goto_5
    invoke-static {v9}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v23

    new-instance v3, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showBackupCodeImportDialog$inputInteraction$1;

    invoke-direct {v3, v2}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showBackupCodeImportDialog$inputInteraction$1;-><init>(Landroid/widget/EditText;)V

    new-instance v4, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showBackupCodeImportDialog$inputInteraction$2;

    invoke-direct {v4, v2}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showBackupCodeImportDialog$inputInteraction$2;-><init>(Landroid/widget/EditText;)V

    const/16 v25, 0x0

    const/16 v31, 0x120

    const/16 v24, 0x1

    const-wide/16 v26, 0x12c

    const/16 v29, 0x0

    move-object/from16 v19, v1

    move-object/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v28, v3

    move-object/from16 v30, v4

    invoke-direct/range {v19 .. v31}, Lcom/deepalhome/launcher/util/DialogInputInteractionController;-><init>(Landroid/app/Dialog;Landroid/widget/EditText;Landroid/view/View;Ljava/util/List;ZZJLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/util/DialogInputInteractionController;->bind()V

    const/4 v3, 0x0

    const/4 v4, 0x6

    :goto_6
    if-ge v3, v4, :cond_8

    aget-object v5, v9, v3

    new-instance v6, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda16;

    const/4 v8, 0x1

    invoke-direct {v6, v1, v8}, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda16;-><init>(Lcom/deepalhome/launcher/util/DialogInputInteractionController;I)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/2addr v3, v8

    goto :goto_6

    :cond_8
    const v3, 0x7f0b040a

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_9

    new-instance v4, Lcom/deepalhome/launcher/HelperActivity$$ExternalSyntheticLambda13;

    const/4 v5, 0x5

    invoke-direct {v4, v2, v7, v0, v5}, Lcom/deepalhome/launcher/HelperActivity$$ExternalSyntheticLambda13;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    invoke-virtual {v1}, Lcom/deepalhome/launcher/util/DialogInputInteractionController;->onDialogShown()V

    return-void

    :pswitch_1
    sget v6, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->$r8$clinit:I

    invoke-static {v12, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda22;->f$1:Lcom/deepalhome/launcher/settings/AdvancedSettingsView;

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v11}, Landroid/app/Dialog;->dismiss()V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    invoke-static {v6}, Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;

    move-result-object v15

    invoke-static {v5, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v15}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->applyConfigBackupDialogTheme(Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f130052

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v15, Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f130051

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v15, Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;->messageTv:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v15, Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;->progressBar:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v15, Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;->okBtn:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v15, Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;->cancelBtn:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v2, Lcom/deepalhome/launcher/util/DialogUtil;->INSTANCE:Lcom/deepalhome/launcher/util/DialogUtil;

    iget-object v5, v15, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v5, Landroidx/cardview/widget/CardView;

    invoke-static {v2, v5}, Lcom/deepalhome/launcher/util/DialogUtil;->showDialog$default(Lcom/deepalhome/launcher/util/DialogUtil;Landroidx/cardview/widget/CardView;)Landroid/app/Dialog;

    move-result-object v1

    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v5, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda6;

    const/4 v6, 0x5

    invoke-direct {v5, v1, v6}, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda6;-><init>(Landroid/app/Dialog;I)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Lcom/deepalhome/launcher/splash/SplashFragment$$ExternalSyntheticLambda1;

    const/16 v18, 0x1

    move-object v13, v3

    move-object v14, v2

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/splash/SplashFragment$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v4, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda4;

    invoke-direct {v0, v8, v2}, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda4;-><init>(ILkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void

    :pswitch_2
    sget v6, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->$r8$clinit:I

    invoke-static {v12, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda22;->f$1:Lcom/deepalhome/launcher/settings/AdvancedSettingsView;

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v11}, Landroid/app/Dialog;->dismiss()V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    invoke-static {v6}, Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v6}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->applyConfigBackupDialogTheme(Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f13005b

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v7, v6, Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f13005a

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v7, v6, Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;->messageTv:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v6, Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;->progressBar:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v6, Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;->okBtn:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v6, Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;->cancelBtn:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v2, Lcom/deepalhome/launcher/util/DialogUtil;->INSTANCE:Lcom/deepalhome/launcher/util/DialogUtil;

    iget-object v5, v6, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v5, Landroidx/cardview/widget/CardView;

    invoke-static {v2, v5}, Lcom/deepalhome/launcher/util/DialogUtil;->showDialog$default(Lcom/deepalhome/launcher/util/DialogUtil;Landroidx/cardview/widget/CardView;)Landroid/app/Dialog;

    move-result-object v1

    new-instance v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    new-instance v15, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v15}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    new-instance v5, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda6;

    const/4 v7, 0x4

    invoke-direct {v5, v1, v7}, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda6;-><init>(Landroid/app/Dialog;I)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda7;

    const/16 v19, 0x2

    move-object v13, v3

    move-object v14, v2

    move-object/from16 v16, v0

    move-object/from16 v17, v6

    move-object/from16 v18, v1

    invoke-direct/range {v13 .. v19}, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda7;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroid/view/View;Ljava/lang/Object;Landroid/app/Dialog;I)V

    invoke-virtual {v4, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/deepalhome/launcher/HelperActivity$$ExternalSyntheticLambda15;

    invoke-direct {v0, v8, v2}, Lcom/deepalhome/launcher/HelperActivity$$ExternalSyntheticLambda15;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
