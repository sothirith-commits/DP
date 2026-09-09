.class public final Lcom/deepalhome/launcher/settings/ActionPickerDialog;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final bgColor:I

.field public final context:Landroid/content/Context;

.field public final mode:Lcom/deepalhome/launcher/settings/ActionPickerMode;

.field public final onSelected:Lkotlin/jvm/functions/Function1;

.field public final textColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/deepalhome/launcher/settings/ActionPickerMode;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const-string v0, "context"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/ActionPickerDialog;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/ActionPickerDialog;->mode:Lcom/deepalhome/launcher/settings/ActionPickerMode;

    iput-object p3, p0, Lcom/deepalhome/launcher/settings/ActionPickerDialog;->onSelected:Lkotlin/jvm/functions/Function1;

    sget-object p2, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result p2

    if-eqz p2, :cond_0

    const p3, 0x7f06038c

    goto :goto_0

    :cond_0
    const p3, 0x7f06038b

    :goto_0
    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    move-result p3

    iput p3, p0, Lcom/deepalhome/launcher/settings/ActionPickerDialog;->textColor:I

    if-eqz p2, :cond_1

    const p2, 0x7f060026

    goto :goto_1

    :cond_1
    const p2, 0x7f060023

    :goto_1
    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/settings/ActionPickerDialog;->bgColor:I

    return-void
.end method

.method public static final show$renderOptions(Landroid/app/AlertDialog;Landroid/widget/ImageView;Landroid/widget/TextView;Landroidx/recyclerview/widget/RecyclerView;Lcom/deepalhome/launcher/settings/ActionPickerDialog;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 10

    iget-object v0, p5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v3, p4, Lcom/deepalhome/launcher/settings/ActionPickerDialog;->context:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;->title(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p4, Lcom/deepalhome/launcher/settings/ActionPickerDialog;->mode:Lcom/deepalhome/launcher/settings/ActionPickerMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v3, "getString(...)"

    iget-object v4, p4, Lcom/deepalhome/launcher/settings/ActionPickerDialog;->context:Landroid/content/Context;

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    if-ne v0, v1, :cond_1

    const-string v0, "Select action"

    goto :goto_0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_2
    const v0, 0x7f130201

    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const v0, 0x7f130042

    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda1;

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-direct/range {v3 .. v9}, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda1;-><init>(Landroid/app/AlertDialog;Landroid/widget/ImageView;Landroid/widget/TextView;Landroidx/recyclerview/widget/RecyclerView;Lcom/deepalhome/launcher/settings/ActionPickerDialog;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v0, :cond_7

    sget-object v0, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->INSTANCE:Lcom/deepalhome/launcher/settings/ActionPickerCatalog;

    iget-object v3, p4, Lcom/deepalhome/launcher/settings/ActionPickerDialog;->context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "context"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p4, Lcom/deepalhome/launcher/settings/ActionPickerDialog;->mode:Lcom/deepalhome/launcher/settings/ActionPickerMode;

    const-string v4, "mode"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_6

    if-eq v0, v2, :cond_5

    if-ne v0, v1, :cond_4

    sget-object v0, Lcom/deepalhome/launcher/settings/ActionPickerSurface;->BLE_DEVICE:Lcom/deepalhome/launcher/settings/ActionPickerSurface;

    goto :goto_1

    :cond_4
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_5
    sget-object v0, Lcom/deepalhome/launcher/settings/ActionPickerSurface;->FLOATING_BALL:Lcom/deepalhome/launcher/settings/ActionPickerSurface;

    goto :goto_1

    :cond_6
    sget-object v0, Lcom/deepalhome/launcher/settings/ActionPickerSurface;->SCHEDULED_TASK:Lcom/deepalhome/launcher/settings/ActionPickerSurface;

    :goto_1
    invoke-static {v3, v0}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->getRootOptions(Landroid/content/Context;Lcom/deepalhome/launcher/settings/ActionPickerSurface;)Ljava/util/List;

    move-result-object v0

    :goto_2
    move-object v3, v0

    goto :goto_3

    :cond_7
    sget-object v1, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->INSTANCE:Lcom/deepalhome/launcher/settings/ActionPickerCatalog;

    check-cast v0, Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;

    invoke-virtual {v1, v0}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->getSubmenuOptions(Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;)Ljava/util/List;

    move-result-object v0

    goto :goto_2

    :goto_3
    new-instance v0, Lcom/deepalhome/launcher/settings/ActionPickerDialog$show$renderOptions$2;

    move-object v1, v0

    move-object v2, p4

    move-object v4, p0

    move-object v5, p5

    move-object v6, p2

    move-object v7, p1

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/deepalhome/launcher/settings/ActionPickerDialog$show$renderOptions$2;-><init>(Lcom/deepalhome/launcher/settings/ActionPickerDialog;Ljava/util/List;Landroid/app/AlertDialog;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/widget/TextView;Landroid/widget/ImageView;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method


# virtual methods
.method public final show()V
    .locals 10

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/ActionPickerDialog;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e001e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b0436

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/cardview/widget/CardView;

    const v3, 0x7f0b0437

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroid/widget/TextView;

    const v3, 0x7f0b00a9

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/widget/ImageView;

    const v3, 0x7f0b004f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    iget v3, p0, Lcom/deepalhome/launcher/settings/ActionPickerDialog;->bgColor:I

    invoke-virtual {v2, v3}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    iget v2, p0, Lcom/deepalhome/launcher/settings/ActionPickerDialog;->textColor:I

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v2, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(I)V

    invoke-virtual {v7, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    move-object v4, v0

    move-object v8, p0

    invoke-static/range {v4 .. v9}, Lcom/deepalhome/launcher/settings/ActionPickerDialog;->show$renderOptions(Landroid/app/AlertDialog;Landroid/widget/ImageView;Landroid/widget/TextView;Landroidx/recyclerview/widget/RecyclerView;Lcom/deepalhome/launcher/settings/ActionPickerDialog;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f06038f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getScreenWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    const/4 v2, -0x2

    invoke-virtual {p0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    :cond_0
    sget-object p0, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->INSTANCE:Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->applyTransparentSystemBars(Landroid/view/Window;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
