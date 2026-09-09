.class public final Lcom/deepalhome/launcher/widget/WidgetLocation;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public height:I

.field public final point:Landroid/graphics/Point;

.field public width:I


# direct methods
.method public constructor <init>(IILandroid/graphics/Point;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/deepalhome/launcher/widget/WidgetLocation;->width:I

    iput p2, p0, Lcom/deepalhome/launcher/widget/WidgetLocation;->height:I

    iput-object p3, p0, Lcom/deepalhome/launcher/widget/WidgetLocation;->point:Landroid/graphics/Point;

    return-void
.end method
