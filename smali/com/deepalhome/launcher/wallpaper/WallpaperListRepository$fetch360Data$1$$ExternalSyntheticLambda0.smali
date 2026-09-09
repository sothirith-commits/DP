.class public final synthetic Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$fetch360Data$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository;

.field public final synthetic f$1:Lcom/deepalhome/launcher/wallpaper/cache/WallpaperPageCache;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository;Lcom/deepalhome/launcher/wallpaper/cache/WallpaperPageCache;I)V
    .locals 0

    iput p3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$fetch360Data$1$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$fetch360Data$1$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository;

    iput-object p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$fetch360Data$1$$ExternalSyntheticLambda0;->f$1:Lcom/deepalhome/launcher/wallpaper/cache/WallpaperPageCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$fetch360Data$1$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "this$0"

    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$fetch360Data$1$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "$page"

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$fetch360Data$1$$ExternalSyntheticLambda0;->f$1:Lcom/deepalhome/launcher/wallpaper/cache/WallpaperPageCache;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository;->cache:Lcom/deepalhome/launcher/wallpaper/cache/WallpaperListCache;

    check-cast v0, Lcom/deepalhome/launcher/wallpaper/cache/FileWallpaperListCache;

    invoke-virtual {v0, p0}, Lcom/deepalhome/launcher/wallpaper/cache/FileWallpaperListCache;->put(Lcom/deepalhome/launcher/wallpaper/cache/WallpaperPageCache;)V

    return-void

    :pswitch_0
    const-string v0, "this$0"

    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$fetch360Data$1$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "$page"

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$fetch360Data$1$$ExternalSyntheticLambda0;->f$1:Lcom/deepalhome/launcher/wallpaper/cache/WallpaperPageCache;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository;->cache:Lcom/deepalhome/launcher/wallpaper/cache/WallpaperListCache;

    check-cast v0, Lcom/deepalhome/launcher/wallpaper/cache/FileWallpaperListCache;

    invoke-virtual {v0, p0}, Lcom/deepalhome/launcher/wallpaper/cache/FileWallpaperListCache;->put(Lcom/deepalhome/launcher/wallpaper/cache/WallpaperPageCache;)V

    return-void

    :pswitch_1
    const-string v0, "this$0"

    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$fetch360Data$1$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "$page"

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$fetch360Data$1$$ExternalSyntheticLambda0;->f$1:Lcom/deepalhome/launcher/wallpaper/cache/WallpaperPageCache;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository;->cache:Lcom/deepalhome/launcher/wallpaper/cache/WallpaperListCache;

    check-cast v0, Lcom/deepalhome/launcher/wallpaper/cache/FileWallpaperListCache;

    invoke-virtual {v0, p0}, Lcom/deepalhome/launcher/wallpaper/cache/FileWallpaperListCache;->put(Lcom/deepalhome/launcher/wallpaper/cache/WallpaperPageCache;)V

    return-void

    :pswitch_2
    const-string v0, "this$0"

    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$fetch360Data$1$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "$page"

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$fetch360Data$1$$ExternalSyntheticLambda0;->f$1:Lcom/deepalhome/launcher/wallpaper/cache/WallpaperPageCache;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository;->cache:Lcom/deepalhome/launcher/wallpaper/cache/WallpaperListCache;

    check-cast v0, Lcom/deepalhome/launcher/wallpaper/cache/FileWallpaperListCache;

    invoke-virtual {v0, p0}, Lcom/deepalhome/launcher/wallpaper/cache/FileWallpaperListCache;->put(Lcom/deepalhome/launcher/wallpaper/cache/WallpaperPageCache;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
