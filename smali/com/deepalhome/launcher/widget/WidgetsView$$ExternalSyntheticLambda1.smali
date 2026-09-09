.class public final synthetic Lcom/deepalhome/launcher/widget/WidgetsView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnDragListener;


# instance fields
.field public final synthetic f$0:Lcom/deepalhome/launcher/widget/WidgetsView;

.field public final synthetic f$1:Lcom/deepalhome/launcher/widget/IWidgetManager;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/widget/WidgetsView;Lcom/deepalhome/launcher/widget/IWidgetManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/WidgetsView$$ExternalSyntheticLambda1;->f$0:Lcom/deepalhome/launcher/widget/WidgetsView;

    iput-object p2, p0, Lcom/deepalhome/launcher/widget/WidgetsView$$ExternalSyntheticLambda1;->f$1:Lcom/deepalhome/launcher/widget/IWidgetManager;

    return-void
.end method


# virtual methods
.method public final onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/deepalhome/launcher/widget/WidgetsView$$ExternalSyntheticLambda1;->f$0:Lcom/deepalhome/launcher/widget/WidgetsView;

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/WidgetsView$$ExternalSyntheticLambda1;->f$1:Lcom/deepalhome/launcher/widget/IWidgetManager;

    invoke-static {v0, p0, p1, p2}, Lcom/deepalhome/launcher/widget/WidgetsView;->$r8$lambda$FuTF0VLQAYY8R6Ou4T0K2wcWquA(Lcom/deepalhome/launcher/widget/WidgetsView;Lcom/deepalhome/launcher/widget/IWidgetManager;Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result p0

    return p0
.end method
