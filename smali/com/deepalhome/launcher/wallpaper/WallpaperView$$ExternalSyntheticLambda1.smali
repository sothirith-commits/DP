.class public final synthetic Lcom/deepalhome/launcher/wallpaper/WallpaperView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/deepalhome/launcher/wallpaper/WallpaperView;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Lcom/deepalhome/launcher/wallpaper/WallpaperTransitionPlan;

.field public final synthetic f$5:Lcom/deepalhome/launcher/wallpaper/WallpaperType;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/wallpaper/WallpaperView;ILjava/lang/Object;Ljava/lang/String;Lcom/deepalhome/launcher/wallpaper/WallpaperTransitionPlan;Lcom/deepalhome/launcher/wallpaper/WallpaperType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$$ExternalSyntheticLambda1;->f$0:Lcom/deepalhome/launcher/wallpaper/WallpaperView;

    iput p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    iput-object p4, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$$ExternalSyntheticLambda1;->f$4:Lcom/deepalhome/launcher/wallpaper/WallpaperTransitionPlan;

    iput-object p6, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$$ExternalSyntheticLambda1;->f$5:Lcom/deepalhome/launcher/wallpaper/WallpaperType;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v4, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$$ExternalSyntheticLambda1;->f$4:Lcom/deepalhome/launcher/wallpaper/WallpaperTransitionPlan;

    iget-object v5, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$$ExternalSyntheticLambda1;->f$5:Lcom/deepalhome/launcher/wallpaper/WallpaperType;

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$$ExternalSyntheticLambda1;->f$0:Lcom/deepalhome/launcher/wallpaper/WallpaperView;

    iget v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$$ExternalSyntheticLambda1;->f$1:I

    iget-object v2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    iget-object v3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->$r8$lambda$9VcJ_Dk1ecOw8S3O4ynyJqIZPmY(Lcom/deepalhome/launcher/wallpaper/WallpaperView;ILjava/lang/Object;Ljava/lang/String;Lcom/deepalhome/launcher/wallpaper/WallpaperTransitionPlan;Lcom/deepalhome/launcher/wallpaper/WallpaperType;)V

    return-void
.end method
