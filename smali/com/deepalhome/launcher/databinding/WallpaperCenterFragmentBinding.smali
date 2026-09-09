.class public abstract Lcom/deepalhome/launcher/databinding/WallpaperCenterFragmentBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final progressBar:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

.field public final recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public final refreshLayout:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;Lcom/google/android/material/progressindicator/CircularProgressIndicator;Landroidx/recyclerview/widget/RecyclerView;Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;ILandroid/view/View;)V

    iput-object p3, p0, Lcom/deepalhome/launcher/databinding/WallpaperCenterFragmentBinding;->progressBar:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    iput-object p4, p0, Lcom/deepalhome/launcher/databinding/WallpaperCenterFragmentBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p5, p0, Lcom/deepalhome/launcher/databinding/WallpaperCenterFragmentBinding;->refreshLayout:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    return-void
.end method
