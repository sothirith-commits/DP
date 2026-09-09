.class public final Lcom/deepalhome/launcher/wallpaper/ManagementPagerAdapter;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "SourceFile"


# instance fields
.field public final tabs:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    sget-object p1, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec;->Companion:Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$Companion;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$Companion;->getALL()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/ManagementPagerAdapter;->tabs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/ManagementPagerAdapter;->tabs:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec;->createFragment()Landroidx/fragment/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/ManagementPagerAdapter;->tabs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
