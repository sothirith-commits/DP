.class public final Lcom/deepalhome/launcher/util/DialogUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/util/DialogUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/util/DialogUtil;

    invoke-direct {v0}, Lcom/deepalhome/launcher/util/DialogUtil;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/util/DialogUtil;->INSTANCE:Lcom/deepalhome/launcher/util/DialogUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final adjustDialogContentHeights$shrinkIfNeeded(IILandroid/app/Activity;Landroid/app/Dialog;Lcom/deepalhome/launcher/databinding/DialogViewBinding;)V
    .locals 8

    iget-object v0, p4, Lcom/deepalhome/launcher/databinding/DialogViewBinding;->messageScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p4, Lcom/deepalhome/launcher/databinding/DialogViewBinding;->okBtn:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_2

    check-cast v1, Landroid/view/View;

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    if-nez v1, :cond_3

    return-void

    :cond_3
    sget-object v3, Lcom/deepalhome/launcher/util/DialogUtil;->INSTANCE:Lcom/deepalhome/launcher/util/DialogUtil;

    iget-object v4, p4, Lcom/deepalhome/launcher/databinding/DialogViewBinding;->rootView:Landroidx/cardview/widget/CardView;

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_5

    :cond_4
    move-object v5, v4

    :cond_5
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, v5}, Lcom/deepalhome/launcher/util/DialogUtil;->resolveDialogUsableHeightPx(Landroid/app/Activity;Landroid/view/View;)I

    move-result v3

    int-to-float v3, v3

    const v5, 0x3f59999a    # 0.85f

    mul-float/2addr v3, v5

    float-to-int v3, v3

    const/4 v5, 0x0

    invoke-static {v0, v5}, Lcom/deepalhome/launcher/util/DialogUtil;->calculateTotalContentHeight(Landroid/view/ViewGroup;Z)I

    move-result v0

    const/4 v6, 0x2

    new-array v6, v6, [I

    invoke-virtual {v1, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v6

    if-eqz p3, :cond_7

    invoke-virtual {p3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_6

    goto :goto_2

    :cond_6
    move-object v4, v6

    :cond_7
    :goto_2
    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getScreenHeight()I

    move-result v6

    if-nez v4, :cond_8

    goto :goto_4

    :cond_8
    sget-object v7, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {v4}, Landroidx/core/view/ViewCompat$Api23Impl;->getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v4

    if-eqz v4, :cond_9

    iget-object v2, v4, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    const/4 v4, 0x7

    invoke-virtual {v2, v4}, Landroidx/core/view/WindowInsetsCompat$Impl;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v2

    :cond_9
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0700a7

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    if-eqz v2, :cond_a

    iget v2, v2, Landroidx/core/graphics/Insets;->bottom:I

    goto :goto_3

    :cond_a
    move v2, v5

    :goto_3
    sub-int/2addr v6, v2

    sub-int/2addr v6, v4

    :goto_4
    sub-int/2addr v0, v3

    sub-int/2addr v1, v6

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p4, v0, v5}, Lcom/deepalhome/launcher/util/DialogUtil;->shrinkDialogScrollableAreas(Lcom/deepalhome/launcher/databinding/DialogViewBinding;IZ)Z

    move-result v0

    if-eqz v0, :cond_d

    if-lez p1, :cond_d

    if-eqz p3, :cond_b

    invoke-virtual {p3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_b

    const/4 v1, -0x2

    invoke-virtual {v0, p0, v1}, Landroid/view/Window;->setLayout(II)V

    :cond_b
    if-eqz p3, :cond_c

    invoke-virtual {p3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_c
    new-instance v0, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda6;

    move-object v1, v0

    move v2, p1

    move v3, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda6;-><init>(IILandroid/app/Activity;Landroid/app/Dialog;Lcom/deepalhome/launcher/databinding/DialogViewBinding;)V

    iget-object p0, p4, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_d
    return-void
.end method

.method public static applyTextColorRecursively(Landroid/view/View;I)V
    .locals 4

    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "getChildAt(...)"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v2, p1}, Lcom/deepalhome/launcher/util/DialogUtil;->applyTextColorRecursively(Landroid/view/View;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static calculateTotalContentHeight(Landroid/view/ViewGroup;Z)I
    .locals 9

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_7

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_6

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    instance-of v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_1

    :cond_0
    move-object v5, v7

    :goto_1
    if-eqz p1, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    goto :goto_2

    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    if-lez v6, :cond_2

    move-object v7, v8

    :cond_2
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    :goto_2
    if-eqz v5, :cond_4

    iget v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_3

    :cond_4
    move v6, v2

    :goto_3
    add-int/2addr v4, v6

    if-eqz v5, :cond_5

    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_4

    :cond_5
    move v5, v2

    :goto_4
    add-int/2addr v4, v5

    add-int/2addr v4, v1

    move v1, v4

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    return v1
.end method

.method public static containsVerticalScrollableView(Landroid/view/View;)Z
    .locals 6

    instance-of v0, p0, Landroid/widget/ScrollView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p0, Landroidx/core/widget/NestedScrollView;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    instance-of v0, p0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    instance-of v0, p0, Landroid/widget/ListView;

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    instance-of v0, p0, Landroid/widget/GridView;

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    instance-of v0, p0, Landroid/webkit/WebView;

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_7

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const-string v5, "getChildAt(...)"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v4}, Lcom/deepalhome/launcher/util/DialogUtil;->containsVerticalScrollableView(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_6

    return v1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    move v1, v2

    :goto_1
    return v1
.end method

.method public static resolveDialogUsableHeightPx(Landroid/app/Activity;Landroid/view/View;)I
    .locals 3

    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getScreenHeight()I

    move-result v0

    if-nez p1, :cond_0

    return v0

    :cond_0
    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {p1}, Landroidx/core/view/ViewCompat$Api23Impl;->getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p1, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Landroidx/core/view/WindowInsetsCompat$Impl;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0700a7

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget v2, p1, Landroidx/core/graphics/Insets;->top:I

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    sub-int v2, v0, v2

    if-eqz p1, :cond_3

    iget v1, p1, Landroidx/core/graphics/Insets;->bottom:I

    :cond_3
    sub-int/2addr v2, v1

    sub-int/2addr v2, p0

    div-int/lit8 v0, v0, 0x2

    if-ge v2, v0, :cond_4

    move v2, v0

    :cond_4
    return v2
.end method

.method public static showDialog$default(Lcom/deepalhome/launcher/util/DialogUtil;Landroidx/cardview/widget/CardView;)Landroid/app/Dialog;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivity()Landroid/app/Activity;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-nez p0, :cond_1

    const-string p0, "DialogUtil"

    const-string p1, "showDialog(view): no active activity, skip"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/app/Dialog;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    goto :goto_2

    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    sget-object v1, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f060026

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    goto :goto_1

    :cond_2
    const v1, 0x7f060023

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    :goto_1
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, 0x7f06038f

    invoke-virtual {p0, v2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-direct {v1, p0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getScreenWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x3

    mul-int/lit8 p0, p0, 0x2

    const/4 v1, -0x2

    invoke-virtual {p1, p0, v1}, Landroid/view/Window;->setLayout(II)V

    :cond_3
    sget-object p0, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->INSTANCE:Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->applyTransparentSystemBars(Landroid/view/Window;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    move-object p0, v0

    :goto_2
    return-object p0
.end method

.method public static showDialog$default(Lcom/deepalhome/launcher/util/DialogUtil;Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;ZLjava/lang/String;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroid/app/Activity;ILjava/lang/Integer;Ljava/lang/Integer;ZZZI)Landroid/app/Dialog;
    .locals 25

    move/from16 v0, p18

    const/16 v2, 0x8

    const/4 v3, 0x1

    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    move-object/from16 v4, p1

    :goto_0
    and-int/lit8 v6, v0, 0x2

    if-eqz v6, :cond_1

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    move-object/from16 v6, p2

    :goto_1
    and-int/lit8 v7, v0, 0x4

    if-eqz v7, :cond_2

    move v7, v3

    goto :goto_2

    :cond_2
    move/from16 v7, p3

    :goto_2
    and-int/lit8 v8, v0, 0x8

    if-eqz v8, :cond_3

    const/4 v8, 0x0

    goto :goto_3

    :cond_3
    move-object/from16 v8, p4

    :goto_3
    and-int/lit8 v9, v0, 0x10

    if-eqz v9, :cond_4

    const/4 v9, 0x0

    goto :goto_4

    :cond_4
    move/from16 v9, p5

    :goto_4
    and-int/lit8 v10, v0, 0x20

    const-string v11, "getString(...)"

    if-eqz v10, :cond_5

    const v10, 0x7f130184

    invoke-static {v10, v11}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_5

    :cond_5
    move-object/from16 v10, p6

    :goto_5
    and-int/lit8 v12, v0, 0x40

    if-eqz v12, :cond_6

    const/4 v12, 0x0

    goto :goto_6

    :cond_6
    move/from16 v12, p7

    :goto_6
    and-int/lit16 v13, v0, 0x80

    if-eqz v13, :cond_7

    const v13, 0x7f130182

    invoke-static {v13, v11}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_7

    :cond_7
    move-object/from16 v11, p8

    :goto_7
    and-int/lit16 v13, v0, 0x100

    if-eqz v13, :cond_8

    const/4 v13, 0x0

    goto :goto_8

    :cond_8
    move-object/from16 v13, p9

    :goto_8
    and-int/lit16 v14, v0, 0x200

    if-eqz v14, :cond_9

    const/4 v14, 0x0

    goto :goto_9

    :cond_9
    move-object/from16 v14, p10

    :goto_9
    and-int/lit16 v15, v0, 0x400

    if-eqz v15, :cond_a

    const/4 v15, 0x0

    goto :goto_a

    :cond_a
    move-object/from16 v15, p11

    :goto_a
    and-int/lit16 v3, v0, 0x800

    if-eqz v3, :cond_b

    const/4 v3, 0x0

    goto :goto_b

    :cond_b
    move/from16 v3, p12

    :goto_b
    and-int/lit16 v2, v0, 0x1000

    if-eqz v2, :cond_c

    const/4 v2, 0x0

    goto :goto_c

    :cond_c
    move-object/from16 v2, p13

    :goto_c
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_d

    const/4 v1, 0x0

    goto :goto_d

    :cond_d
    move-object/from16 v1, p14

    :goto_d
    and-int/lit16 v5, v0, 0x4000

    if-eqz v5, :cond_e

    const/4 v5, 0x0

    goto :goto_e

    :cond_e
    move/from16 v5, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v0, v16

    if-eqz v16, :cond_f

    const/16 v16, 0x1

    goto :goto_f

    :cond_f
    const/16 v16, 0x0

    :goto_f
    const/high16 v17, 0x10000

    and-int v17, v0, v17

    if-eqz v17, :cond_10

    const/16 v17, 0x1

    goto :goto_10

    :cond_10
    move/from16 v17, p16

    :goto_10
    const/high16 v18, 0x20000

    and-int v18, v0, v18

    if-eqz v18, :cond_11

    const/16 v18, 0x0

    goto :goto_11

    :cond_11
    move/from16 v18, p17

    :goto_11
    const/high16 v19, 0x40000

    and-int v0, v0, v19

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_12

    :cond_12
    const/4 v0, 0x0

    :goto_12
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 p7, v1

    const-string v1, "positiveButtonLabel"

    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "negativeButtonLabel"

    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v15, :cond_13

    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivity()Landroid/app/Activity;

    move-result-object v15

    :cond_13
    if-eqz v15, :cond_14

    invoke-virtual {v15}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {v15}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_13

    :cond_14
    const/4 v15, 0x0

    :goto_13
    if-nez v15, :cond_15

    const-string v0, "DialogUtil"

    const-string v1, "showDialog: no active activity, skip"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/app/Dialog;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    goto/16 :goto_26

    :cond_15
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v15}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 p6, v14

    invoke-static {v15}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    sget v19, Lcom/deepalhome/launcher/databinding/DialogViewBinding;->$r8$clinit:I

    sget-object v19, Landroidx/databinding/DataBindingUtil;->sMapper:Landroidx/databinding/DataBinderMapperImpl;

    move-object/from16 v19, v11

    const v11, 0x7f0e0052

    move/from16 v20, v12

    move-object/from16 p2, v13

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v14, v11, v12, v13, v12}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object v11

    check-cast v11, Lcom/deepalhome/launcher/databinding/DialogViewBinding;

    const-string v13, "inflate(...)"

    invoke-static {v13, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getScreenWidth()I

    move-result v13

    div-int/lit8 v13, v13, 0x3

    mul-int/lit8 v13, v13, 0x2

    iget-object v14, v11, Lcom/deepalhome/launcher/databinding/DialogViewBinding;->viewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    move/from16 p8, v13

    instance-of v13, v12, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v13, :cond_16

    check-cast v12, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_14

    :cond_16
    const/4 v12, 0x0

    :goto_14
    if-eqz v12, :cond_17

    iget v12, v12, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_15

    :cond_17
    const/4 v12, 0x0

    :goto_15
    iget-object v13, v11, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {v1, v13}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move/from16 p0, v12

    iget-object v12, v11, Lcom/deepalhome/launcher/databinding/DialogViewBinding;->titleTv:Landroid/widget/TextView;

    if-eqz v4, :cond_18

    invoke-static {v4}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_19

    :cond_18
    move-object/from16 v21, v13

    const/16 v4, 0x8

    goto :goto_16

    :cond_19
    move-object/from16 v21, v13

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_17

    :goto_16
    invoke-virtual {v12, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_17
    iget-object v4, v11, Lcom/deepalhome/launcher/databinding/DialogViewBinding;->messageTv:Landroid/widget/TextView;

    iget-object v13, v11, Lcom/deepalhome/launcher/databinding/DialogViewBinding;->messageScrollView:Landroid/widget/ScrollView;

    if-eqz v6, :cond_1a

    invoke-static {v6}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_1b

    :cond_1a
    move-object/from16 v22, v12

    const/16 v2, 0x8

    goto :goto_18

    :cond_1b
    move-object/from16 v22, v12

    const/4 v12, 0x0

    invoke-virtual {v13, v12}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4, v12}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v2, :cond_1c

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_19

    :goto_18
    invoke-virtual {v13, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1c
    :goto_19
    if-eqz v8, :cond_22

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    instance-of v12, v6, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v12, :cond_1d

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_1a

    :cond_1d
    const/4 v6, 0x0

    :goto_1a
    if-nez v6, :cond_1e

    goto :goto_1c

    :cond_1e
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v2, 0x8

    if-ne v12, v2, :cond_1f

    const/4 v2, 0x0

    goto :goto_1b

    :cond_1f
    move/from16 v2, p0

    :goto_1b
    iput v2, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_1c
    if-eqz v0, :cond_21

    invoke-static {v8}, Lcom/deepalhome/launcher/util/DialogUtil;->containsVerticalScrollableView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_1d

    :cond_20
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, v15}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOverScrollMode(I)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v12, -0x2

    invoke-direct {v2, v6, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v8, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1e

    :cond_21
    :goto_1d
    move-object v0, v8

    :goto_1e
    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_22
    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v2, v11, Lcom/deepalhome/launcher/databinding/DialogViewBinding;->okBtn:Landroid/widget/TextView;

    if-eqz v9, :cond_25

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    if-lez v3, :cond_23

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v7, 0x29

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-long v6, v3

    const-wide/16 v23, 0x3e8

    mul-long v6, v6, v23

    new-instance v3, Lcom/deepalhome/launcher/util/DialogUtil$showDialog$2;

    invoke-direct {v3, v11, v10, v6, v7}, Lcom/deepalhome/launcher/util/DialogUtil$showDialog$2;-><init>(Lcom/deepalhome/launcher/databinding/DialogViewBinding;Ljava/lang/String;J)V

    iput-object v3, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_1f

    :cond_23
    if-eqz v5, :cond_24

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    const v3, 0x3ecccccd    # 0.4f

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda0;

    invoke-direct {v3, v11}, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/databinding/DialogViewBinding;)V

    invoke-virtual {v13, v3}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    goto :goto_1f

    :cond_24
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1f
    new-instance v3, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda1;

    const/4 v6, 0x0

    move-object/from16 p0, v3

    move-object/from16 p1, v1

    move/from16 p3, v16

    move-object/from16 p4, v0

    move/from16 p5, v6

    invoke-direct/range {p0 .. p5}, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Object;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_25
    iget-object v3, v11, Lcom/deepalhome/launcher/databinding/DialogViewBinding;->cancelBtn:Landroid/widget/TextView;

    if-eqz v20, :cond_26

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v6, v19

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v6, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda1;

    const/4 v7, 0x1

    move-object/from16 p0, v6

    move-object/from16 p1, v1

    move-object/from16 p2, p6

    move/from16 p3, v17

    move-object/from16 p4, v0

    move/from16 p5, v7

    invoke-direct/range {p0 .. p5}, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Object;I)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_26
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    const/4 v7, -0x2

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v13, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v14, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v6, 0x40000000    # 2.0f

    move/from16 v7, p8

    invoke-static {v7, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    const/4 v9, 0x0

    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    move-object/from16 v9, v21

    invoke-virtual {v9, v6, v10}, Landroid/view/View;->measure(II)V

    invoke-virtual {v13}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    instance-of v10, v6, Landroid/view/ViewGroup;

    if-eqz v10, :cond_27

    check-cast v6, Landroid/view/ViewGroup;

    goto :goto_20

    :cond_27
    const/4 v6, 0x0

    :goto_20
    if-nez v6, :cond_28

    goto :goto_22

    :cond_28
    invoke-virtual {v15}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v10

    if-eqz v10, :cond_29

    invoke-virtual {v10}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v10

    goto :goto_21

    :cond_29
    const/4 v10, 0x0

    :goto_21
    invoke-static {v15, v10}, Lcom/deepalhome/launcher/util/DialogUtil;->resolveDialogUsableHeightPx(Landroid/app/Activity;Landroid/view/View;)I

    move-result v10

    int-to-float v10, v10

    const v12, 0x3f59999a    # 0.85f

    mul-float/2addr v10, v12

    float-to-int v10, v10

    const/4 v12, 0x1

    invoke-static {v6, v12}, Lcom/deepalhome/launcher/util/DialogUtil;->calculateTotalContentHeight(Landroid/view/ViewGroup;Z)I

    move-result v6

    sub-int v13, v6, v10

    if-gez v13, :cond_2a

    const/4 v13, 0x0

    :cond_2a
    if-lez v13, :cond_2b

    invoke-static {v11, v13, v12}, Lcom/deepalhome/launcher/util/DialogUtil;->shrinkDialogScrollableAreas(Lcom/deepalhome/launcher/databinding/DialogViewBinding;IZ)Z

    :cond_2b
    :goto_22
    new-instance v6, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda3;

    move-object/from16 p0, v6

    move/from16 p1, v7

    move-object/from16 p2, v15

    move-object/from16 p3, v0

    move-object/from16 p4, v11

    move-object/from16 p5, v1

    move/from16 p6, v5

    invoke-direct/range {p0 .. p6}, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda3;-><init>(ILandroid/app/Activity;Landroid/app/AlertDialog;Lcom/deepalhome/launcher/databinding/DialogViewBinding;Lkotlin/jvm/internal/Ref$ObjectRef;Z)V

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    new-instance v5, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda4;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v1}, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda4;-><init>(ILkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    sget-object v1, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result v1

    const v5, 0x7f060387

    const v6, 0x7f0800ab

    iget-object v10, v11, Lcom/deepalhome/launcher/databinding/DialogViewBinding;->rootView:Landroidx/cardview/widget/CardView;

    if-eqz v1, :cond_2e

    const v1, 0x7f06038c

    invoke-virtual {v15, v1}, Landroid/content/Context;->getColor(I)I

    move-result v11

    move-object/from16 v12, v22

    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v15, v1}, Landroid/content/Context;->getColor(I)I

    move-result v11

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setTextColor(I)V

    const v4, 0x7f060388

    invoke-virtual {v15, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const v4, 0x7f0800aa

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setBackgroundResource(I)V

    if-eqz v18, :cond_2c

    invoke-virtual {v15, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_2c
    if-eqz p7, :cond_2d

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_2d
    const v2, 0x7f060026

    invoke-virtual {v15, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v10, v2}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    if-eqz v8, :cond_31

    sget-object v2, Lcom/deepalhome/launcher/util/DialogUtil;->INSTANCE:Lcom/deepalhome/launcher/util/DialogUtil;

    invoke-virtual {v15, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8, v1}, Lcom/deepalhome/launcher/util/DialogUtil;->applyTextColorRecursively(Landroid/view/View;I)V

    goto :goto_23

    :cond_2e
    move-object/from16 v12, v22

    const v1, 0x7f06038b

    invoke-virtual {v15, v1}, Landroid/content/Context;->getColor(I)I

    move-result v11

    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v15, v1}, Landroid/content/Context;->getColor(I)I

    move-result v11

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v15, v1}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const v4, 0x7f0800a9

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setBackgroundResource(I)V

    if-eqz v18, :cond_2f

    invoke-virtual {v15, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_2f
    if-eqz p7, :cond_30

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_30
    const v2, 0x7f060023

    invoke-virtual {v15, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v10, v2}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    if-eqz v8, :cond_31

    sget-object v2, Lcom/deepalhome/launcher/util/DialogUtil;->INSTANCE:Lcom/deepalhome/launcher/util/DialogUtil;

    invoke-virtual {v15, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8, v1}, Lcom/deepalhome/launcher/util/DialogUtil;->applyTextColorRecursively(Landroid/view/View;I)V

    :cond_31
    :goto_23
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_32

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const v3, 0x7f06038f

    invoke-virtual {v15, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, -0x2

    invoke-virtual {v1, v7, v2}, Landroid/view/Window;->setLayout(II)V

    :cond_32
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v2, :cond_33

    move-object v5, v1

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    goto :goto_24

    :cond_33
    const/4 v5, 0x0

    :goto_24
    if-nez v5, :cond_34

    goto :goto_25

    :cond_34
    const/16 v1, 0x11

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :goto_25
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Landroid/view/View;->setAlpha(F)V

    sget-object v1, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->INSTANCE:Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->applyTransparentSystemBars(Landroid/view/Window;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :goto_26
    return-object v0
.end method

.method public static shrinkDialogScrollableAreas(Lcom/deepalhome/launcher/databinding/DialogViewBinding;IZ)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-lez p1, :cond_5

    iget-object v4, p0, Lcom/deepalhome/launcher/databinding/DialogViewBinding;->messageScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v2, :cond_5

    if-eqz p2, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    if-lez v5, :cond_1

    goto :goto_0

    :cond_1
    move-object v6, v1

    :goto_0
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    :goto_1
    if-lez v5, :cond_5

    invoke-static {p1, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    sub-int/2addr v5, v6

    if-gez v5, :cond_3

    move v5, v3

    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v7, v5, :cond_4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iput v5, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v4}, Landroid/widget/ScrollView;->requestLayout()V

    move v4, v0

    goto :goto_2

    :cond_4
    move v4, v3

    :goto_2
    sub-int/2addr p1, v6

    goto :goto_3

    :cond_5
    move v4, v3

    :goto_3
    if-lez p1, :cond_a

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/DialogViewBinding;->viewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v2, :cond_a

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-lez p2, :cond_7

    move-object v1, v2

    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_4

    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    :goto_4
    if-lez p2, :cond_a

    sub-int/2addr p2, p1

    if-gez p2, :cond_9

    goto :goto_5

    :cond_9
    move v3, p2

    :goto_5
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq p1, v3, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput v3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_6

    :cond_a
    move v0, v4

    :goto_6
    return v0
.end method
