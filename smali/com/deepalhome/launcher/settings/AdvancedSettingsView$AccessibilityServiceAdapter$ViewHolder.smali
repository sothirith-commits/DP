.class public final Lcom/deepalhome/launcher/settings/AdvancedSettingsView$AccessibilityServiceAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field public final binding:Lcom/deepalhome/launcher/databinding/ItemAccessibilityServiceBinding;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/databinding/ItemAccessibilityServiceBinding;)V
    .locals 1

    iget-object v0, p1, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$AccessibilityServiceAdapter$ViewHolder;->binding:Lcom/deepalhome/launcher/databinding/ItemAccessibilityServiceBinding;

    return-void
.end method
