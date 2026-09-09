.class public abstract Lcom/deepalhome/launcher/databinding/ShortcutsViewBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final folderView:Landroidx/recyclerview/widget/RecyclerView;

.field public final recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;ILandroid/view/View;)V

    iput-object p3, p0, Lcom/deepalhome/launcher/databinding/ShortcutsViewBinding;->folderView:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p4, p0, Lcom/deepalhome/launcher/databinding/ShortcutsViewBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method
