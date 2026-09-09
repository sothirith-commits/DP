.class public final Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public adapter:Lcom/deepalhome/launcher/wallpaper/WallpaperCenterAdapter;

.field public binding:Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;

.field public dynamicWallpaperFragment:Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;

.field public floatBallFragment:Lcom/deepalhome/launcher/wallpaper/FloatBallCenterFragment;

.field public navAdapter:Lcom/deepalhome/launcher/wallpaper/WallpaperNavAdapter;

.field public final pageChangeListener:Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity$pageChangeListener$1;

.field public final uiModeChangedListener:Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity$uiModeChangedListener$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity$Companion;-><init>(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity$uiModeChangedListener$1;

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity$uiModeChangedListener$1;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;)V

    iput-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->uiModeChangedListener:Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity$uiModeChangedListener$1;

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity$pageChangeListener$1;

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity$pageChangeListener$1;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;)V

    iput-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->pageChangeListener:Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity$pageChangeListener$1;

    return-void
.end method

.method public static final access$onLoadFailed(Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;)V
    .locals 9

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;->progressBar:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->adapter:Lcom/deepalhome/launcher/wallpaper/WallpaperCenterAdapter;

    const-string v2, "adapter"

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterAdapter;->categories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/Category;->Companion:Lcom/deepalhome/launcher/wallpaper/Category$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/Category;

    const v3, 0x7f13048c

    const-string v4, "getString(...)"

    invoke-static {v3, v4}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v4, -0x3

    const/4 v6, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/deepalhome/launcher/wallpaper/Category;-><init>(ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->adapter:Lcom/deepalhome/launcher/wallpaper/WallpaperCenterAdapter;

    if-eqz v3, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v2}, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterAdapter;->setData(Ljava/util/ArrayList;)V

    iget-object v2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->navAdapter:Lcom/deepalhome/launcher/wallpaper/WallpaperNavAdapter;

    if-eqz v2, :cond_0

    new-instance v1, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;

    const/16 v3, 0xa

    invoke-direct {v1, v3, p0}, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iget-object p0, v2, Landroidx/recyclerview/widget/ListAdapter;->mDiffer:Landroidx/recyclerview/widget/AsyncListDiffer;

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/AsyncListDiffer;->submitList(Ljava/util/List;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-string p0, "navAdapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_4
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public static final access$parseCategories(Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;Lcom/deepalhome/launcher/http/Wallpaper360CategoriesResponse;)Ljava/util/List;
    .locals 9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/deepalhome/launcher/http/Wallpaper360CategoriesResponse;->getData()Ljava/util/Map;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_3

    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/http/Wallpaper360CategoryDto;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/http/Wallpaper360CategoryDto;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-static {v1}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0}, Lcom/deepalhome/launcher/http/Wallpaper360CategoryDto;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    move-object v5, v0

    goto :goto_1

    :cond_2
    move-object v5, v2

    :goto_1
    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    new-instance v2, Lcom/deepalhome/launcher/wallpaper/Category;

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x4

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/deepalhome/launcher/wallpaper/Category;-><init>(ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_4
    :goto_2
    if-eqz v2, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    new-instance p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity$parseCategories$$inlined$sortedBy$1;

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity$parseCategories$$inlined$sortedBy$1;-><init>()V

    invoke-static {p1, p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    goto :goto_4

    :cond_6
    :goto_3
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :goto_4
    return-object p0
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v0, 0x1

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v1

    const-string v2, "getSupportFragmentManager(...)"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const-string v4, "KEY_IS_SPLASH"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-direct {p1, v1, v2}, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterAdapter;-><init>(Landroidx/fragment/app/FragmentManagerImpl;Z)V

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->adapter:Lcom/deepalhome/launcher/wallpaper/WallpaperCenterAdapter;

    const p1, 0x7f0e010f

    invoke-static {p0, p1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    const-string v1, "setContentView(...)"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;->topTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v1

    const v2, 0x7f1304a0

    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(I)V

    iget-object v2, p1, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz p1, :cond_15

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;->topTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v4

    const v5, 0x7f130492

    invoke-virtual {v4, v5}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(I)V

    iget-object v5, p1, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;

    if-eqz p1, :cond_14

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;->topTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v4

    const v5, 0x7f130494

    invoke-virtual {v4, v5}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(I)V

    iget-object v5, p1, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;

    if-eqz p1, :cond_13

    new-instance v4, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity$setupTopTabs$1;

    invoke-direct {v4, p0, v3}, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity$setupTopTabs$1;-><init>(Landroid/view/KeyEvent$Callback;I)V

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;->topTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1, v4}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;

    if-eqz p1, :cond_12

    new-instance v4, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v3}, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;I)V

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;->downloadManagementBtn:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/deepalhome/launcher/wallpaper/WallpaperNavAdapter;

    new-instance v4, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity$setupNavigation$1;

    invoke-direct {v4, p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity$setupNavigation$1;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;)V

    invoke-direct {p1, v4}, Lcom/deepalhome/launcher/wallpaper/WallpaperNavAdapter;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity$setupNavigation$1;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->navAdapter:Lcom/deepalhome/launcher/wallpaper/WallpaperNavAdapter;

    sget-object p1, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->INSTANCE:Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->isCarStatusBarVisible()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;

    if-eqz p1, :cond_2

    iget-object p1, p1, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v4, 0x7f0700ba

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object v4, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;

    if-eqz v4, :cond_1

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;->wallpaperContent:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3, v3, v3, p1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;

    if-eqz p1, :cond_11

    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v4, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;->navRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v4, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->navAdapter:Lcom/deepalhome/launcher/wallpaper/WallpaperNavAdapter;

    if-eqz v4, :cond_10

    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;

    if-eqz p1, :cond_f

    new-instance v4, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;I)V

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;->backBtn:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;

    if-eqz p1, :cond_e

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;

    if-eqz p1, :cond_d

    iget-object v4, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->adapter:Lcom/deepalhome/launcher/wallpaper/WallpaperCenterAdapter;

    if-eqz v4, :cond_c

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v4}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->INSTANCE:Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->isCarStatusBarVisible()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;

    if-eqz p1, :cond_4

    new-instance v4, Lokhttp3/internal/Util$$ExternalSyntheticLambda0;

    const/4 v5, 0x6

    invoke-direct {v4, v5, p0}, Lokhttp3/internal/Util$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    sget-object v5, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    iget-object p1, p1, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-static {p1, v4}, Landroidx/core/view/ViewCompat$Api21Impl;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    goto :goto_2

    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;

    if-eqz p1, :cond_b

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;->viewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v4, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->pageChangeListener:Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity$pageChangeListener$1;

    invoke-virtual {p1, v4}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    invoke-static {p0}, Lcom/blankj/utilcode/util/BarUtils;->transparentStatusBar(Landroid/app/Activity;)V

    sget-object p1, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->INSTANCE:Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->applyAllBarVisibility(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->applyTransparentSystemBars(Landroid/app/Activity;)V

    sget-object p1, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->updateUIMode(Z)V

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->uiModeChangedListener:Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity$uiModeChangedListener$1;

    invoke-static {p1}, Lcom/deepalhome/launcher/theme/UIModeManager;->addOnUIModeChangedListener(Lkotlin/jvm/functions/Function1;)V

    sget-object p1, Lcom/deepalhome/launcher/wallpaper/Category;->Companion:Lcom/deepalhome/launcher/wallpaper/Category$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object p1

    const-string v4, "wallpaper_category_cache"

    invoke-virtual {p1, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v4, "cache_time"

    const-wide/16 v5, 0x0

    invoke-interface {p1, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    const-wide/32 v4, 0x5265c00

    cmp-long v4, v6, v4

    if-lez v4, :cond_6

    :goto_3
    move-object p1, v1

    goto :goto_5

    :cond_6
    const-string v4, "categories"

    invoke-interface {p1, v4, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_3

    :cond_7
    :try_start_0
    sget v4, Lkotlin/Result;->$r8$clinit:I

    new-instance v4, Lcom/deepalhome/launcher/wallpaper/Category$Companion$getCached$1$type$1;

    invoke-direct {v4}, Lcom/deepalhome/launcher/wallpaper/Category$Companion$getCached$1$type$1;-><init>()V

    invoke-virtual {v4}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    invoke-static {v4}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v4

    invoke-virtual {v5, p1, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Lcom/google/gson/reflect/TypeToken;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    sget v4, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p1

    :goto_4
    instance-of v4, p1, Lkotlin/Result$Failure;

    if-eqz v4, :cond_8

    move-object p1, v1

    :cond_8
    check-cast p1, Ljava/util/List;

    :goto_5
    if-eqz p1, :cond_9

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->showCategories(Ljava/util/List;)V

    sget-object p1, Lcom/deepalhome/launcher/http/Server;->INSTANCE:Lcom/deepalhome/launcher/http/Server;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/deepalhome/launcher/http/Server;->api:Lcom/deepalhome/launcher/http/Api;

    invoke-interface {p1}, Lcom/deepalhome/launcher/http/Api;->getWallpaperCategoryList()Lretrofit2/Call;

    move-result-object p1

    new-instance v1, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity$fetchCategoriesFromServer$1;

    invoke-direct {v1, p0, v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity$fetchCategoriesFromServer$1;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;I)V

    invoke-interface {p1, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto :goto_6

    :cond_9
    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;

    if-eqz p1, :cond_a

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;->progressBar:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    sget-object p1, Lcom/deepalhome/launcher/http/Server;->INSTANCE:Lcom/deepalhome/launcher/http/Server;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/deepalhome/launcher/http/Server;->api:Lcom/deepalhome/launcher/http/Api;

    invoke-interface {p1}, Lcom/deepalhome/launcher/http/Api;->getWallpaperCategoryList()Lretrofit2/Call;

    move-result-object p1

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity$fetchCategoriesFromServer$1;

    invoke-direct {v0, p0, v3}, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity$fetchCategoriesFromServer$1;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;I)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    :goto_6
    return-void

    :cond_a
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_b
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_c
    const-string p0, "adapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_d
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_e
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_f
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_10
    const-string p0, "navAdapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_11
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_12
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_13
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_14
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_15
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;->viewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v0, v0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->pageChangeListener:Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity$pageChangeListener$1;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->uiModeChangedListener:Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity$uiModeChangedListener$1;

    invoke-static {v0}, Lcom/deepalhome/launcher/theme/UIModeManager;->removeOnUIModeChangedListener(Lkotlin/jvm/functions/Function1;)V

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void

    :cond_1
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    sget-object v0, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->INSTANCE:Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->applyAllBarVisibility(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->applyTransparentSystemBars(Landroid/app/Activity;)V

    return-void
.end method

.method public final showCategories(Ljava/util/List;)V
    .locals 18

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/deepalhome/launcher/wallpaper/Category;

    invoke-virtual {v4}, Lcom/deepalhome/launcher/wallpaper/Category;->getId()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x24

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/deepalhome/launcher/wallpaper/Category;

    invoke-virtual {v6}, Lcom/deepalhome/launcher/wallpaper/Category;->getId()I

    move-result v6

    if-ne v6, v5, :cond_2

    goto :goto_1

    :cond_3
    move-object v3, v4

    :goto_1
    check-cast v3, Lcom/deepalhome/launcher/wallpaper/Category;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/deepalhome/launcher/wallpaper/Category;

    invoke-virtual {v7}, Lcom/deepalhome/launcher/wallpaper/Category;->getId()I

    move-result v7

    if-eq v7, v5, :cond_4

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    sget-object v1, Lcom/deepalhome/launcher/wallpaper/Category;->Companion:Lcom/deepalhome/launcher/wallpaper/Category$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/deepalhome/launcher/wallpaper/Category;

    const v5, 0x7f13048c

    const-string v11, "getString(...)"

    invoke-static {v5, v11}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v6, -0x3

    const/4 v8, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcom/deepalhome/launcher/wallpaper/Category;-><init>(ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v5, Lcom/deepalhome/launcher/wallpaper/Category;

    const v6, 0x7f13048b

    invoke-static {v6, v11}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x4

    const/16 v17, 0x0

    const/4 v13, -0x4

    const/4 v15, 0x0

    move-object v12, v5

    invoke-direct/range {v12 .. v17}, Lcom/deepalhome/launcher/wallpaper/Category;-><init>(ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    filled-new-array {v1, v5}, [Lcom/deepalhome/launcher/wallpaper/Category;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v3, :cond_6

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v2, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->adapter:Lcom/deepalhome/launcher/wallpaper/WallpaperCenterAdapter;

    const-string v3, "adapter"

    if-eqz v2, :cond_f

    invoke-virtual {v2, v1}, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterAdapter;->setData(Ljava/util/ArrayList;)V

    iget-object v2, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->adapter:Lcom/deepalhome/launcher/wallpaper/WallpaperCenterAdapter;

    if-eqz v2, :cond_e

    iget-object v2, v2, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterAdapter;->categories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const-string v5, "binding"

    if-nez v2, :cond_7

    move v6, v3

    goto :goto_3

    :cond_7
    iget-object v6, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;

    if-eqz v6, :cond_d

    iget-object v6, v6, Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v6}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v6

    add-int/lit8 v7, v2, -0x1

    invoke-static {v6, v3, v7}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v6

    :goto_3
    if-lez v2, :cond_a

    iget-object v2, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;

    if-eqz v2, :cond_9

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v2

    if-eq v2, v6, :cond_a

    iget-object v2, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;

    if-eqz v2, :cond_8

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;->viewPager:Landroidx/viewpager/widget/ViewPager;

    iput-boolean v3, v2, Landroidx/viewpager/widget/ViewPager;->mPopulatePending:Z

    invoke-virtual {v2, v6, v3, v3, v3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItemInternal(IIZZ)V

    goto :goto_4

    :cond_8
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_9
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_a
    :goto_4
    iget-object v2, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->navAdapter:Lcom/deepalhome/launcher/wallpaper/WallpaperNavAdapter;

    if-eqz v2, :cond_c

    new-instance v3, Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda1;

    const/4 v7, 0x7

    invoke-direct {v3, v6, v7, v0}, Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda1;-><init>(IILjava/lang/Object;)V

    iget-object v2, v2, Landroidx/recyclerview/widget/ListAdapter;->mDiffer:Landroidx/recyclerview/widget/AsyncListDiffer;

    invoke-virtual {v2, v1, v3}, Landroidx/recyclerview/widget/AsyncListDiffer;->submitList(Ljava/util/List;Ljava/lang/Runnable;)V

    iget-object v0, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;

    if-eqz v0, :cond_b

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;->progressBar:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_b
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_c
    const-string v0, "navAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_d
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_e
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_f
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4
.end method

.method public final updateUIMode(Z)V
    .locals 6

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_a

    if-eqz p1, :cond_0

    const v3, 0x7f060026

    goto :goto_0

    :cond_0
    const v3, 0x7f060023

    :goto_0
    iget-object v0, v0, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->navAdapter:Lcom/deepalhome/launcher/wallpaper/WallpaperNavAdapter;

    if-eqz v0, :cond_9

    iget-boolean v3, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperNavAdapter;->isNight:Z

    if-ne v3, p1, :cond_1

    goto :goto_1

    :cond_1
    iput-boolean p1, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperNavAdapter;->isNight:Z

    invoke-virtual {v0}, Landroidx/recyclerview/widget/ListAdapter;->getItemCount()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/ListAdapter;->getItemCount()I

    move-result v3

    const-string v4, "payload_ui_mode"

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    const v0, 0x7f06038c

    goto :goto_2

    :cond_3
    const v0, 0x7f06038b

    :goto_2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-object v3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;

    if-eqz v3, :cond_8

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;->backBtn:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;

    if-eqz v3, :cond_7

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;->backBtn:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/button/MaterialButton;->setIconTint(Landroid/content/res/ColorStateList;)V

    if-eqz p1, :cond_4

    const p1, 0x7f060259

    goto :goto_3

    :cond_4
    const p1, 0x7f060258

    :goto_3
    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iget-object v3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;

    if-eqz v3, :cond_6

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;->topTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v3, p1}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorColor(I)V

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;

    if-eqz p0, :cond_5

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;->topTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p1}, Lcom/google/android/material/tabs/TabLayout;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->setTabTextColors(Landroid/content/res/ColorStateList;)V

    return-void

    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_7
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_8
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_9
    const-string p0, "navAdapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_a
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method
