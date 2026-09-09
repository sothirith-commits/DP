.class public final Lcom/chad/library/adapter4/viewholder/StateLayoutVH;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter4/fullspan/FullSpanAdapterType;


# static fields
.field public static final Companion:Lcom/chad/library/adapter4/viewholder/StateLayoutVH$Companion;


# instance fields
.field public final stateLayout:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/chad/library/adapter4/viewholder/StateLayoutVH$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/chad/library/adapter4/viewholder/StateLayoutVH$Companion;-><init>(I)V

    sput-object v0, Lcom/chad/library/adapter4/viewholder/StateLayoutVH;->Companion:Lcom/chad/library/adapter4/viewholder/StateLayoutVH$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v1, Lcom/chad/library/adapter4/viewholder/StateLayoutVH;->Companion:Lcom/chad/library/adapter4/viewholder/StateLayoutVH$Companion;

    invoke-static {v1, v0, p2}, Lcom/chad/library/adapter4/viewholder/StateLayoutVH$Companion;->access$setStateView(Lcom/chad/library/adapter4/viewholder/StateLayoutVH$Companion;Landroid/widget/FrameLayout;Landroid/view/View;)V

    const-string p2, "parent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/chad/library/adapter4/viewholder/StateLayoutVH;->stateLayout:Landroid/widget/FrameLayout;

    return-void
.end method
