.class public final Lcom/deepalhome/launcher/settings/TaskEditorDialog$ConditionsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# instance fields
.field public final onConditionsChanged:Lkotlin/jvm/functions/Function0;

.field public pendingInsertPosition:I

.field public final synthetic this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/settings/TaskEditorDialog;Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$5;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ConditionsAdapter;->this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ConditionsAdapter;->onConditionsChanged:Lkotlin/jvm/functions/Function0;

    const/4 p1, -0x1

    iput p1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ConditionsAdapter;->pendingInsertPosition:I

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ConditionsAdapter;->this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->conditions:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 10

    move-object v1, p1

    check-cast v1, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ConditionsAdapter$ViewHolder;

    const-string p1, "holder"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ConditionsAdapter;->this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v1, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ConditionsAdapter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v6, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p1, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->conditions:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/task/model/TaskCondition;

    const v2, 0x7f0b011a

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const v3, 0x7f0b0119

    invoke-virtual {v6, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f0b011f

    invoke-virtual {v6, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0b0120

    invoke-virtual {v6, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v7, 0x7f0b04a9

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iget v8, p1, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->actionItemBg:I

    invoke-virtual {v2, v8}, Landroid/view/View;->setBackgroundResource(I)V

    instance-of v2, v0, Lcom/deepalhome/launcher/task/model/TaskCondition$Invalid;

    const v8, 0x7f080130

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    instance-of v2, v0, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    instance-of v2, v0, Lcom/deepalhome/launcher/task/model/TaskCondition$SpeedRange;

    if-eqz v2, :cond_2

    const v8, 0x7f08012e

    goto :goto_0

    :cond_2
    instance-of v2, v0, Lcom/deepalhome/launcher/task/model/TaskCondition$WifiState;

    if-eqz v2, :cond_4

    move-object v2, v0

    check-cast v2, Lcom/deepalhome/launcher/task/model/TaskCondition$WifiState;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/task/model/TaskCondition$WifiState;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    const v8, 0x7f080131

    goto :goto_0

    :cond_3
    const v8, 0x7f080132

    goto :goto_0

    :cond_4
    instance-of v2, v0, Lcom/deepalhome/launcher/task/model/TaskCondition$ButtonPressType;

    if-eqz v2, :cond_7

    move-object v2, v0

    check-cast v2, Lcom/deepalhome/launcher/task/model/TaskCondition$ButtonPressType;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/task/model/TaskCondition$ButtonPressType;->isLongPress()Z

    move-result v2

    if-eqz v2, :cond_5

    const v8, 0x7f08012d

    goto :goto_0

    :cond_5
    const v8, 0x7f08012f

    :goto_0
    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iget v8, p1, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->textColor:I

    invoke-virtual {v3, v8, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/task/model/TaskCondition;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/task/model/TaskCondition;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p1, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->hintColor:I

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v8, -0x1

    invoke-virtual {v7, v8, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/view/View;->setEnabled(Z)V

    new-instance v9, Lcom/deepalhome/launcher/splash/SplashFragment$$ExternalSyntheticLambda1;

    const/4 v5, 0x5

    move-object v0, v9

    move-object v2, v7

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/splash/SplashFragment$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v7, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ConditionsAdapter;->pendingInsertPosition:I

    if-ne p2, v0, :cond_6

    iput v8, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ConditionsAdapter;->pendingInsertPosition:I

    invoke-static {p1, v6}, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->access$animateListItemIn(Lcom/deepalhome/launcher/settings/TaskEditorDialog;Landroid/view/View;)V

    :cond_6
    return-void

    :cond_7
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const-string p2, "parent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p2, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ConditionsAdapter$ViewHolder;

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ConditionsAdapter;->this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->context:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v0, 0x7f0e003a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const-string p1, "inflate(...)"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p2, p0}, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ConditionsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
