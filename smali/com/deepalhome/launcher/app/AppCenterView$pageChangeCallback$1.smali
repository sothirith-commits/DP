.class public final Lcom/deepalhome/launcher/app/AppCenterView$pageChangeCallback$1;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/deepalhome/launcher/app/AppCenterView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/app/AppCenterView;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/app/AppCenterView$pageChangeCallback$1;->this$0:Lcom/deepalhome/launcher/app/AppCenterView;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageSelected(I)V
    .locals 3

    iget-object p0, p0, Lcom/deepalhome/launcher/app/AppCenterView$pageChangeCallback$1;->this$0:Lcom/deepalhome/launcher/app/AppCenterView;

    invoke-static {p0}, Lcom/deepalhome/launcher/app/AppCenterView;->access$getPendingTabSelectionPosition$p(Lcom/deepalhome/launcher/app/AppCenterView;)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p1, :cond_1

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {p0, p1, v0}, Lcom/deepalhome/launcher/app/AppCenterView;->access$updateTabSelection(Lcom/deepalhome/launcher/app/AppCenterView;IZ)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/deepalhome/launcher/app/AppCenterView;->access$setPendingTabSelectionPosition$p(Lcom/deepalhome/launcher/app/AppCenterView;Ljava/lang/Integer;)V

    invoke-static {p0}, Lcom/deepalhome/launcher/app/AppCenterView;->access$updateHeaderActions(Lcom/deepalhome/launcher/app/AppCenterView;)V

    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    invoke-static {p0}, Lcom/deepalhome/launcher/app/AppCenterView;->access$getFunctionAdapter$p(Lcom/deepalhome/launcher/app/AppCenterView;)Lcom/deepalhome/launcher/app/FunctionListAdapter;

    move-result-object p1

    invoke-static {p1, v0, v1, v0}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->refreshRuntimeState$default(Lcom/deepalhome/launcher/app/FunctionListAdapter;Ljava/util/Set;ILjava/lang/Object;)V

    invoke-static {p0}, Lcom/deepalhome/launcher/app/AppCenterView;->access$getFunctionAdapter$p(Lcom/deepalhome/launcher/app/AppCenterView;)Lcom/deepalhome/launcher/app/FunctionListAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->refreshVisibleMusicState()V

    :cond_2
    return-void
.end method
