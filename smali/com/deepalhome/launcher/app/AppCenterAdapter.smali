.class public final Lcom/deepalhome/launcher/app/AppCenterAdapter;
.super Lcom/chad/library/adapter4/BaseQuickAdapter;
.source "SourceFile"


# instance fields
.field public isEditMode:Z

.field public onIconClickListener:Lkotlin/jvm/functions/Function1;

.field public onIconLongClickListener:Lkotlin/jvm/functions/Function2;

.field public onTouchListener:Landroid/view/View$OnTouchListener;

.field public final selectedPackages:Ljava/util/LinkedHashSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;-><init>(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/deepalhome/launcher/app/AppCenterAdapter;->selectedPackages:Ljava/util/LinkedHashSet;

    return-void
.end method

.method public static final access$dispatchTouchToDragOwner(Lcom/deepalhome/launcher/app/AppCenterAdapter;Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 4

    if-ne p1, p2, :cond_0

    move-object v0, p3

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [I

    new-array v1, v1, [I

    invoke-virtual {p2, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 p2, 0x0

    aget v3, v2, p2

    aget p2, v1, p2

    sub-int/2addr v3, p2

    int-to-float p2, v3

    const/4 v3, 0x1

    aget v2, v2, v3

    aget v1, v1, v3

    sub-int/2addr v2, v1

    int-to-float v1, v2

    invoke-virtual {v0, p2, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :goto_0
    iget-object p0, p0, Lcom/deepalhome/launcher/app/AppCenterAdapter;->onTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, v0}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    :cond_1
    if-eq v0, p3, :cond_2

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_2
    return-void
.end method


# virtual methods
.method public final getItemId(I)J
    .locals 0

    iget-object p0, p0, Lcom/chad/library/adapter4/BaseQuickAdapter;->items:Ljava/util/List;

    invoke-static {p1, p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/app/App;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/app/App;->getPackageName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    int-to-long p0, p0

    goto :goto_0

    :cond_0
    int-to-long p0, p1

    :goto_0
    return-wide p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 23

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move-object/from16 v3, p1

    check-cast v3, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;

    move-object/from16 v4, p3

    check-cast v4, Lcom/deepalhome/launcher/app/App;

    const-string v5, "holder"

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v4, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v5, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v6, "itemView"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v6, Lcom/deepalhome/launcher/app/AppCenterAdapter$onBindViewHolder$handleClick$1;

    invoke-direct {v6, v3, v0}, Lcom/deepalhome/launcher/app/AppCenterAdapter$onBindViewHolder$handleClick$1;-><init>(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;Lcom/deepalhome/launcher/app/AppCenterAdapter;)V

    new-instance v15, Lcom/deepalhome/launcher/app/AppCenterAdapter$onBindViewHolder$handleLongPress$1;

    invoke-direct {v15, v3, v0, v5}, Lcom/deepalhome/launcher/app/AppCenterAdapter$onBindViewHolder$handleLongPress$1;-><init>(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;Lcom/deepalhome/launcher/app/AppCenterAdapter;Landroid/view/View;)V

    new-instance v21, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;

    iget-object v7, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v14, "getContext(...)"

    invoke-static {v14, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v12, Lcom/deepalhome/launcher/app/AppCenterAdapter$onBindViewHolder$itemTouchListener$1;

    invoke-direct {v12, v0}, Lcom/deepalhome/launcher/app/AppCenterAdapter$onBindViewHolder$itemTouchListener$1;-><init>(Lcom/deepalhome/launcher/app/AppCenterAdapter;)V

    new-instance v13, Lcom/deepalhome/launcher/app/AppCenterAdapter$onBindViewHolder$itemTouchListener$2;

    invoke-direct {v13, v0, v5}, Lcom/deepalhome/launcher/app/AppCenterAdapter$onBindViewHolder$itemTouchListener$2;-><init>(Lcom/deepalhome/launcher/app/AppCenterAdapter;Landroid/view/View;)V

    const/16 v16, 0x0

    const/16 v20, 0x3e6

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    move-object/from16 v7, v21

    move-object v2, v14

    move-object/from16 v14, v17

    move-object/from16 p1, v15

    move-object/from16 v15, v18

    move-object/from16 v17, v19

    move/from16 v18, v22

    move-object/from16 v19, p1

    invoke-direct/range {v7 .. v20}, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;-><init>(Landroid/content/Context;JFLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lcom/deepalhome/launcher/app/FunctionListAdapter$bindTouchInteractions$touchListener$2;Lcom/deepalhome/launcher/app/AppCenterAdapter$onBindViewHolder$handleClick$1;ZLkotlin/jvm/functions/Function1;I)V

    new-instance v22, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;

    iget-object v7, v3, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->binding:Landroidx/databinding/ViewDataBinding;

    move-object v15, v7

    check-cast v15, Lcom/deepalhome/launcher/databinding/AppCenterItemViewBinding;

    iget-object v7, v15, Lcom/deepalhome/launcher/databinding/AppCenterItemViewBinding;->iconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v12, Lcom/deepalhome/launcher/app/AppCenterAdapter$onBindViewHolder$iconTouchListener$1;

    invoke-direct {v12, v0}, Lcom/deepalhome/launcher/app/AppCenterAdapter$onBindViewHolder$iconTouchListener$1;-><init>(Lcom/deepalhome/launcher/app/AppCenterAdapter;)V

    new-instance v13, Lcom/deepalhome/launcher/app/AppCenterAdapter$onBindViewHolder$iconTouchListener$2;

    invoke-direct {v13, v0, v5}, Lcom/deepalhome/launcher/app/AppCenterAdapter$onBindViewHolder$iconTouchListener$2;-><init>(Lcom/deepalhome/launcher/app/AppCenterAdapter;Landroid/view/View;)V

    const/4 v2, 0x0

    const/16 v20, 0xe6

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x1

    move-object/from16 v7, v22

    move-object v5, v15

    move-object v15, v2

    move-object/from16 v17, v6

    move-object/from16 v19, p1

    invoke-direct/range {v7 .. v20}, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;-><init>(Landroid/content/Context;JFLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lcom/deepalhome/launcher/app/FunctionListAdapter$bindTouchInteractions$touchListener$2;Lcom/deepalhome/launcher/app/AppCenterAdapter$onBindViewHolder$handleClick$1;ZLkotlin/jvm/functions/Function1;I)V

    iget-object v2, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v7, v5, Lcom/deepalhome/launcher/databinding/AppCenterItemViewBinding;->iconContainer:Landroid/widget/FrameLayout;

    iget-object v8, v5, Lcom/deepalhome/launcher/databinding/AppCenterItemViewBinding;->iconIv:Lcom/makeramen/roundedimageview/RoundedImageView;

    iget-object v9, v5, Lcom/deepalhome/launcher/databinding/AppCenterItemViewBinding;->nameTv:Landroid/widget/TextView;

    iget-object v10, v5, Lcom/deepalhome/launcher/databinding/AppCenterItemViewBinding;->pinIv:Landroid/widget/ImageView;

    const/4 v11, 0x5

    new-array v11, v11, [Landroid/view/View;

    aput-object v2, v11, v1

    const/4 v2, 0x1

    aput-object v7, v11, v2

    const/4 v2, 0x2

    aput-object v8, v11, v2

    const/4 v2, 0x3

    aput-object v9, v11, v2

    const/4 v2, 0x4

    aput-object v10, v11, v2

    invoke-static {v11}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    const/4 v12, 0x0

    if-eqz v11, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    iget-object v13, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-ne v11, v13, :cond_1

    move-object/from16 v13, v21

    goto :goto_1

    :cond_1
    move-object/from16 v13, v22

    :goto_1
    invoke-virtual {v11, v13}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v13, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda1;

    const/4 v14, 0x1

    invoke-direct {v13, v14, v6}, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v11, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v13, v0, Lcom/deepalhome/launcher/app/AppCenterAdapter;->isEditMode:Z

    if-eqz v13, :cond_2

    move-object/from16 v13, p1

    goto :goto_2

    :cond_2
    new-instance v12, Lcom/deepalhome/launcher/pip/PipAppWindow$$ExternalSyntheticLambda1;

    move-object/from16 v13, p1

    invoke-direct {v12, v14, v13}, Lcom/deepalhome/launcher/pip/PipAppWindow$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    :goto_2
    invoke-virtual {v11, v12}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    move-object/from16 p1, v13

    goto :goto_0

    :cond_3
    const/4 v14, 0x1

    sget-object v2, Lcom/deepalhome/launcher/util/AppUtil;->INSTANCE:Lcom/deepalhome/launcher/util/AppUtil;

    const-string v3, "iconIv"

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, 0x7f0800ec

    invoke-static {v8, v4, v2}, Lcom/deepalhome/launcher/util/AppUtil;->bindAppIcon(Landroid/widget/ImageView;Lcom/deepalhome/launcher/app/App;I)V

    invoke-virtual {v4}, Lcom/deepalhome/launcher/app/App;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Settings"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0x8

    if-eqz v2, :cond_4

    sget-object v2, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->INSTANCE:Lcom/deepalhome/launcher/settings/S05AppUpdateManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->shouldShowUpdateBadge()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v1

    goto :goto_3

    :cond_4
    move v2, v3

    :goto_3
    iget-object v5, v5, Lcom/deepalhome/launcher/databinding/AppCenterItemViewBinding;->updateBadgeView:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4}, Lcom/deepalhome/launcher/app/App;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v2, v0, Lcom/deepalhome/launcher/app/AppCenterAdapter;->isEditMode:Z

    if-eqz v2, :cond_5

    iget-object v0, v0, Lcom/deepalhome/launcher/app/AppCenterAdapter;->selectedPackages:Ljava/util/LinkedHashSet;

    invoke-virtual {v4}, Lcom/deepalhome/launcher/app/App;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v2, v14

    goto :goto_4

    :cond_5
    move v2, v1

    :goto_4
    if-eqz v2, :cond_6

    goto :goto_5

    :cond_6
    move v1, v3

    :goto_5
    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v7, v12}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v8, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v9, v0}, Landroid/view/View;->setAlpha(F)V

    :goto_6
    return-void
.end method

.method public final onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/chad/library/adapter4/viewholder/DataBindingHolder;
    .locals 0

    const-string p0, "parent"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;

    invoke-direct {p0, p2}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;-><init>(Landroid/view/ViewGroup;)V

    return-object p0
.end method

.method public final setEditMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/app/AppCenterAdapter;->isEditMode:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
