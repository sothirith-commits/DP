.class public abstract Lcom/deepalhome/launcher/databinding/WidgetAppWindowBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# instance fields
.field public final widgetsView:Lcom/deepalhome/launcher/widget/WidgetsView;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;Lcom/deepalhome/launcher/widget/WidgetsView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;ILandroid/view/View;)V

    iput-object p3, p0, Lcom/deepalhome/launcher/databinding/WidgetAppWindowBinding;->widgetsView:Lcom/deepalhome/launcher/widget/WidgetsView;

    return-void
.end method
