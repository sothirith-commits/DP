.class public final synthetic Lcom/deepalhome/launcher/pip/PipAppWindow$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/profileinstaller/DeviceProfileWriter;ILjava/io/Serializable;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/deepalhome/launcher/pip/PipAppWindow$$ExternalSyntheticLambda5;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/pip/PipAppWindow$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    iput p2, p0, Lcom/deepalhome/launcher/pip/PipAppWindow$$ExternalSyntheticLambda5;->f$0:I

    iput-object p3, p0, Lcom/deepalhome/launcher/pip/PipAppWindow$$ExternalSyntheticLambda5;->f$2:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;Landroid/net/Uri;I)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/deepalhome/launcher/pip/PipAppWindow$$ExternalSyntheticLambda5;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/pip/PipAppWindow$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    iput-object p2, p0, Lcom/deepalhome/launcher/pip/PipAppWindow$$ExternalSyntheticLambda5;->f$2:Ljava/lang/Object;

    iput p3, p0, Lcom/deepalhome/launcher/pip/PipAppWindow$$ExternalSyntheticLambda5;->f$0:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    iput p4, p0, Lcom/deepalhome/launcher/pip/PipAppWindow$$ExternalSyntheticLambda5;->$r8$classId:I

    iput p3, p0, Lcom/deepalhome/launcher/pip/PipAppWindow$$ExternalSyntheticLambda5;->f$0:I

    iput-object p1, p0, Lcom/deepalhome/launcher/pip/PipAppWindow$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    iput-object p2, p0, Lcom/deepalhome/launcher/pip/PipAppWindow$$ExternalSyntheticLambda5;->f$2:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final native run()V
.end method
