.class public final Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity$setupTopTabs$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final this$0:Landroid/view/KeyEvent$Callback;


# direct methods
.method public synthetic constructor <init>(Landroid/view/KeyEvent$Callback;I)V
    .locals 0

    iput p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity$setupTopTabs$1;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity$setupTopTabs$1;->this$0:Landroid/view/KeyEvent$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final onTabReselected$com$google$android$material$tabs$TabLayout$ViewPagerOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method

.method private final onTabUnselected$com$deepalhome$launcher$wallpaper$WallpaperCenterActivity$setupTopTabs$1(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method

.method private final onTabUnselected$com$deepalhome$launcher$wallpaper$WallpaperManagementActivity$setupViewPager$2(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method

.method private final onTabUnselected$com$google$android$material$tabs$TabLayout$ViewPagerOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity$setupTopTabs$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    return-void

    :pswitch_0
    const-string p0, "tab"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :pswitch_1
    const-string p0, "tab"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 6

    const/4 v0, 0x0

    const-string v1, "binding"

    const/4 v2, 0x0

    const-string v3, "tab"

    iget-object v4, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity$setupTopTabs$1;->this$0:Landroid/view/KeyEvent$Callback;

    iget p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity$setupTopTabs$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    iget p0, p1, Lcom/google/android/material/tabs/TabLayout$Tab;->position:I

    check-cast v4, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v4, p0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void

    :pswitch_0
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget p0, p1, Lcom/google/android/material/tabs/TabLayout$Tab;->position:I

    check-cast v4, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;

    iget-object p1, v4, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p1

    if-eq p1, p0, :cond_1

    iget-object p1, v4, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1, p0, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :pswitch_1
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget p0, p1, Lcom/google/android/material/tabs/TabLayout$Tab;->position:I

    check-cast v4, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;

    const/16 p1, 0x8

    if-eqz p0, :cond_d

    const/4 v3, 0x1

    const v5, 0x7f0b0130

    if-eq p0, v3, :cond_8

    const/4 v3, 0x2

    if-eq p0, v3, :cond_3

    sget p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->$r8$clinit:I

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_1

    :cond_3
    iget-object p0, v4, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;

    if-eqz p0, :cond_7

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;->wallpaperContent:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, v4, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;

    if-eqz p0, :cond_6

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;->contentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, v4, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->floatBallFragment:Lcom/deepalhome/launcher/wallpaper/FloatBallCenterFragment;

    if-nez p0, :cond_4

    new-instance p0, Lcom/deepalhome/launcher/wallpaper/FloatBallCenterFragment;

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/FloatBallCenterFragment;-><init>()V

    iput-object p0, v4, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->floatBallFragment:Lcom/deepalhome/launcher/wallpaper/FloatBallCenterFragment;

    :cond_4
    iget-object p0, v4, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->floatBallFragment:Lcom/deepalhome/launcher/wallpaper/FloatBallCenterFragment;

    if-nez p0, :cond_5

    goto/16 :goto_1

    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_e

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/fragment/app/BackStackRecord;

    invoke-direct {v0, p1}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    const-string p1, "float_ball_fragment"

    invoke-virtual {v0, v5, p0, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/BackStackRecord;->commitNowAllowingStateLoss()V

    goto :goto_1

    :cond_6
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_7
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_8
    iget-object p0, v4, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;

    if-eqz p0, :cond_c

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;->wallpaperContent:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, v4, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;

    if-eqz p0, :cond_b

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;->contentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, v4, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->dynamicWallpaperFragment:Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;

    if-nez p0, :cond_9

    new-instance p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;-><init>()V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "KEY_CATEGORY_ID"

    const/4 v1, -0x5

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    iput-object p0, v4, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->dynamicWallpaperFragment:Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;

    :cond_9
    iget-object p0, v4, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->dynamicWallpaperFragment:Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;

    if-nez p0, :cond_a

    goto :goto_1

    :cond_a
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_e

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/fragment/app/BackStackRecord;

    invoke-direct {v0, p1}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    const-string p1, "dynamic_wallpaper_fragment"

    invoke-virtual {v0, v5, p0, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/BackStackRecord;->commitNowAllowingStateLoss()V

    goto :goto_1

    :cond_b
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_c
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_d
    iget-object p0, v4, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;

    if-eqz p0, :cond_10

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;->wallpaperContent:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, v4, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;

    if-eqz p0, :cond_f

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;->contentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    :goto_1
    return-void

    :cond_f
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_10
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity$setupTopTabs$1;->$r8$classId:I

    return-void
.end method
