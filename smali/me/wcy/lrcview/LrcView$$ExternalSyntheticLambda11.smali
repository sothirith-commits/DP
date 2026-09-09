.class public final synthetic Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->$r8$classId:I

    iput-object p1, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$2:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 0

    iput p4, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->$r8$classId:I

    iput-object p1, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$2:Ljava/lang/Object;

    iput-object p3, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$1:Ljava/lang/Object;

    iput-object p2, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$2:Ljava/lang/Object;

    iput-object p3, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lme/wcy/lrcview/LrcView;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$1:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    const v0, 0x7f130207

    const/4 v1, -0x1

    const v2, 0x7f0c000c

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    iget v9, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->$r8$classId:I

    packed-switch v9, :pswitch_data_0

    iget-object v0, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    check-cast v0, Lretrofit2/OkHttpCall$1;

    iget-object v0, v0, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall;

    iget-object v1, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$1:Ljava/lang/Object;

    check-cast v1, Lretrofit2/Callback;

    iget-object p0, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$2:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Throwable;

    invoke-interface {v1, v0, p0}, Lretrofit2/Callback;->onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    check-cast v0, Lretrofit2/OkHttpCall$1;

    iget-object v0, v0, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall;

    iget-object v1, v0, Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall;->delegate:Lretrofit2/Call;

    invoke-interface {v1}, Lretrofit2/Call;->isCanceled()Z

    move-result v1

    iget-object v2, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$1:Ljava/lang/Object;

    check-cast v2, Lretrofit2/Callback;

    if-eqz v1, :cond_0

    new-instance p0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v0, p0}, Lretrofit2/Callback;->onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$2:Ljava/lang/Object;

    check-cast p0, Lretrofit2/Response;

    invoke-interface {v2, v0, p0}, Lretrofit2/Callback;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$2:Ljava/lang/Object;

    check-cast v1, Lcom/koushikdutta/async/ByteBufferList;

    iget v2, v1, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    int-to-long v2, v2

    iput-wide v2, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->mContentLength:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->mRawHeaders:Lcom/koushikdutta/async/http/Headers;

    const-string v4, "Content-Length"

    invoke-virtual {v3, v4, v2}, Lcom/koushikdutta/async/http/Headers;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_1

    const-string v2, "Content-Type"

    invoke-virtual {v3, v2, p0}, Lcom/koushikdutta/async/http/Headers;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance p0, Lokhttp3/internal/Util$$ExternalSyntheticLambda0;

    const/16 v2, 0xe

    invoke-direct {p0, v2, v0}, Lokhttp3/internal/Util$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    new-instance v2, Lcom/koushikdutta/async/Util$8;

    invoke-direct {v2, v0, v1, p0, v7}, Lcom/koushikdutta/async/Util$8;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->setWriteableCallback(Lcom/koushikdutta/async/callback/WritableCallback;)V

    invoke-virtual {v2}, Lcom/koushikdutta/async/Util$8;->onWriteable()V

    return-void

    :pswitch_2
    iget-object v0, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    const-string v1, "$progressDialog"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/deepalhome/launcher/widget/MagiskWidgetView;

    const-string v2, "this$0"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$2:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/task/MagiskActivationProgressStep;

    const-string v2, "$step"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lcom/deepalhome/launcher/widget/MagiskActivationProgressDialog;

    if-nez v2, :cond_2

    new-instance v2, Lcom/deepalhome/launcher/widget/MagiskActivationProgressDialog;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "getContext(...)"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v2, v1}, Lcom/deepalhome/launcher/widget/MagiskActivationProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/deepalhome/launcher/widget/MagiskActivationProgressDialog;->show()V

    :cond_2
    iput-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;

    invoke-direct {v0, v5, v2, p0}, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :pswitch_3
    const-string v0, "this$0"

    iget-object v1, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/deepalhome/launcher/weather/WeatherWidgetView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "$weather"

    iget-object v2, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$1:Ljava/lang/Object;

    check-cast v2, Lcom/deepalhome/launcher/weather/Weather;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "$coordinate"

    iget-object p0, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$2:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WeatherWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WeatherWidgetViewBinding;->temperatureTv:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/weather/Weather;->getLive()Lcom/deepalhome/launcher/weather/Live;

    move-result-object v3

    invoke-virtual {v3}, Lcom/deepalhome/launcher/weather/Live;->getTemperature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WeatherWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WeatherWidgetViewBinding;->weatherTv:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/weather/Weather;->getLive()Lcom/deepalhome/launcher/weather/Live;

    move-result-object v3

    invoke-virtual {v3}, Lcom/deepalhome/launcher/weather/Live;->getWeather()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Lcom/deepalhome/launcher/weather/Weather;->getCity()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {v1}, Lcom/deepalhome/launcher/weather/WeatherWidgetView;->access$getLastCityName$p(Lcom/deepalhome/launcher/weather/WeatherWidgetView;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {v1, v0}, Lcom/deepalhome/launcher/weather/WeatherWidgetView;->access$setLastCityName$p(Lcom/deepalhome/launcher/weather/WeatherWidgetView;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/WeatherWidgetViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/WeatherWidgetViewBinding;->cityTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Weather updated lon="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;->longitude:D

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", lat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;->latitude:D

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, ", temp="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/weather/Weather;->getLive()Lcom/deepalhome/launcher/weather/Live;

    move-result-object p0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/weather/Live;->getTemperature()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", weather="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/weather/Weather;->getLive()Lcom/deepalhome/launcher/weather/Live;

    move-result-object p0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/weather/Live;->getWeather()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WeatherWidgetView"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_4
    const-string v0, "this$0"

    iget-object v1, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "$downloadTask"

    iget-object v2, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$2:Ljava/lang/Object;

    check-cast v2, Lcom/liulishuo/okdownload/DownloadTask;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    iget-object p0, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$1:Ljava/lang/Object;

    check-cast p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;

    invoke-virtual {v1, p0, v2}, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->resetDownloadBtn(Lclub/deepal/launcher3/wallpaper/WallpaperItem;Lcom/liulishuo/okdownload/DownloadTask;)V

    :goto_2
    return-void

    :pswitch_5
    iget-object v0, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterItemAdapter;

    const-string v0, "this$0"

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$1:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    const-string v0, "$url"

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$2:Ljava/lang/Object;

    move-object v8, p0

    check-cast v8, Landroid/widget/ImageView;

    const-string p0, "$imageView"

    invoke-static {p0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    sget p0, Lkotlin/Result;->$r8$clinit:I

    new-instance p0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {p0}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/deepalhome/launcher/http/OpenListProxy;->INSTANCE:Lcom/deepalhome/launcher/http/OpenListProxy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Lcom/deepalhome/launcher/http/OpenListProxy;->proxyAuthHeaders(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, v9, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    const-wide/16 v0, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {p0}, Landroid/media/MediaMetadataRetriever;->release()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception p0

    :try_start_3
    sget v1, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception p0

    goto :goto_4

    :catchall_2
    move-exception v0

    :try_start_4
    sget v1, Lkotlin/Result;->$r8$clinit:I

    invoke-virtual {p0}, Landroid/media/MediaMetadataRetriever;->release()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p0

    :try_start_5
    sget v1, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    :goto_3
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_4
    sget v0, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v0

    :goto_5
    instance-of p0, v0, Lkotlin/Result$Failure;

    if-eqz p0, :cond_7

    goto :goto_6

    :cond_7
    move-object v6, v0

    :goto_6
    move-object v10, v6

    check-cast v10, Landroid/graphics/Bitmap;

    if-eqz v10, :cond_8

    sget-object p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterItemAdapter;->videoFrameCache:Landroid/util/LruCache;

    invoke-virtual {p0, v9, v10}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    new-instance p0, Lcom/deepalhome/launcher/splash/SplashFragment$$ExternalSyntheticLambda2;

    const/4 v12, 0x4

    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/splash/SplashFragment$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {p0}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :pswitch_6
    sget v0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;->$r8$clinit:I

    iget-object v0, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;

    const-string v1, "this$0"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_7

    :cond_9
    iget-object v0, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_b

    sget-object v1, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->INSTANCE:Lcom/deepalhome/launcher/floating/FloatingBallWindow;

    invoke-static {v1, v0}, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->updateIconByFile$default(Lcom/deepalhome/launcher/floating/FloatingBallWindow;Ljava/lang/String;)V

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    iget-object p0, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$2:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_a

    const-string p0, ""

    :cond_a
    invoke-virtual {v0, p0}, Lcom/deepalhome/launcher/config/UserConfig;->setFloatingBallIconLibraryPath(Ljava/lang/String;)V

    const p0, 0x7f1301e1

    invoke-static {p0}, Lcom/blankj/utilcode/util/ToastUtils;->showShort(I)V

    goto :goto_7

    :cond_b
    const p0, 0x7f1301e0

    invoke-static {p0}, Lcom/blankj/utilcode/util/ToastUtils;->showShort(I)V

    :goto_7
    return-void

    :pswitch_7
    sget-object v0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->Companion:Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment$Companion;

    iget-object v0, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    const-string v1, "$context"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$1:Ljava/lang/Object;

    check-cast v1, Ljava/io/File;

    const-string v2, "$libraryFile"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$2:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;

    const-string v2, "this$0"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lcom/deepalhome/launcher/floating/FloatingBallIconStore;->INSTANCE:Lcom/deepalhome/launcher/floating/FloatingBallIconStore;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/deepalhome/launcher/floating/FloatingBallIconStore;->cacheIcon(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, v0, v7}, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment$$ExternalSyntheticLambda7;-><init>(Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;Ljava/lang/String;I)V

    invoke-static {v1}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :pswitch_8
    iget-object v0, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/launcher/task/MagiskActivationProgressStep;

    const-string v1, "$step"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$1:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    const-string v2, "$hasReachedPostWirelessDebugProgress"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$2:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    const-string v2, "$progressDialog"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lcom/deepalhome/launcher/task/MagiskActivationProgressStep;->CheckSu:Lcom/deepalhome/launcher/task/MagiskActivationProgressStep;

    if-ne v0, v2, :cond_c

    iput-boolean v8, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    :cond_c
    iget-boolean v1, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v1, :cond_e

    iget-object v1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/deepalhome/launcher/widget/MagiskActivationProgressDialog;

    if-nez v1, :cond_d

    sget-object v1, Lcom/deepalhome/launcher/task/TaskExecutor;->INSTANCE:Lcom/deepalhome/launcher/task/TaskExecutor;

    invoke-static {v1}, Lcom/deepalhome/launcher/task/TaskExecutor;->access$showMagiskActivationProgressDialog(Lcom/deepalhome/launcher/task/TaskExecutor;)Lcom/deepalhome/launcher/widget/MagiskActivationProgressDialog;

    move-result-object v1

    :cond_d
    iput-object v1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v1, :cond_e

    new-instance p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;

    invoke-direct {p0, v5, v1, v0}, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_e
    return-void

    :pswitch_9
    const-string v0, "$listeners"

    iget-object v1, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "$sceneName"

    iget-object v2, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "$result"

    iget-object p0, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$2:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/task/SceneLegoActionContract$ExecutionResult;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-interface {v1, v2, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_f
    return-void

    :pswitch_a
    const-string v0, "this$0"

    iget-object v1, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "$horizontalAnchor"

    iget-object v5, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$1:Ljava/lang/Object;

    check-cast v5, Landroid/view/View;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "$verticalAnchor"

    iget-object p0, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$2:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v5, p0}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->positionPopup(Landroid/view/View;Landroid/view/View;)V

    iget-object p0, v1, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->binding:Lcom/deepalhome/launcher/databinding/SeatVentPopupWindowBinding;

    iget-object v0, p0, Lcom/deepalhome/launcher/databinding/SeatVentPopupWindowBinding;->popupContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/SeatVentPopupWindowBinding;->popupContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    iget-object v0, v1, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    :pswitch_b
    const-string v0, "this$0"

    iget-object v1, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "$horizontalAnchor"

    iget-object v5, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$1:Ljava/lang/Object;

    check-cast v5, Landroid/view/View;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "$verticalAnchor"

    iget-object p0, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$2:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v5, p0}, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->positionPopup(Landroid/view/View;Landroid/view/View;)V

    iget-object p0, v1, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->binding:Lcom/deepalhome/launcher/databinding/FanSpeedPopupWindowBinding;

    iget-object v0, p0, Lcom/deepalhome/launcher/databinding/FanSpeedPopupWindowBinding;->popupContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/FanSpeedPopupWindowBinding;->popupContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    iget-object v0, v1, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    :pswitch_c
    sget v2, Lcom/deepalhome/launcher/music/MusicAppWindow;->$r8$clinit:I

    iget-object v2, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    const-string v3, "$isDragging"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$1:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/internal/Ref$BooleanRef;

    const-string v4, "$isLongPress"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$2:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/music/MusicAppWindow;

    const-string v4, "this$0"

    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v2, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v2, :cond_10

    iput-boolean v8, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    sget-object v2, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/deepalhome/launcher/config/UserConfig;->setMusicWindowLyricColor(I)V

    sget-object v1, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/deepalhome/launcher/music/MusicAppWindow;->applyLyricColor(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_10
    return-void

    :pswitch_d
    const-string v2, "$isDragging"

    iget-object v3, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "$isLongPress"

    iget-object v4, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$1:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "this$0"

    iget-object p0, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$2:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v2, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v2, :cond_11

    iput-boolean v8, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    sget-object v2, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/deepalhome/launcher/config/UserConfig;->setFloatingLyricsColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->applyLyricColor()V

    iget-object p0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->context:Landroid/content/Context;

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_11
    return-void

    :pswitch_e
    const-string v0, "sourceID"

    const-string v1, "HUDLyricManager"

    const-string v2, "Current lyrics: "

    const-string v3, "Lyrics sent successfully: "

    const-string v4, "$currentLyric"

    iget-object v5, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "$nextLyric"

    iget-object v6, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$2:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_6
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    sget-wide v9, Lcom/deepalhome/launcher/hud/HudLyricManager;->currentMusicId:J

    invoke-virtual {v4, v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v7, "lyricStatus"

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "curLyric"

    invoke-virtual {v4, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "nextLyric"

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    iget-object p0, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_12

    :try_start_7
    const-string v6, "thirdLyric"

    invoke-virtual {v4, v6, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_9

    :catch_0
    move-exception p0

    goto :goto_a

    :cond_12
    :goto_9
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    sget-wide v6, Lcom/deepalhome/launcher/hud/HudLyricManager;->currentMusicId:J

    invoke-virtual {p0, v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "sourceType"

    const/16 v6, 0x1e

    invoke-virtual {p0, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "songName"

    sget-object v7, Lcom/deepalhome/launcher/hud/HudLyricManager;->currentMusicName:Ljava/lang/String;

    invoke-virtual {p0, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "singerName"

    sget-object v7, Lcom/deepalhome/launcher/hud/HudLyricManager;->currentSingerName:Ljava/lang/String;

    invoke-virtual {p0, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "programName"

    sget-object v7, Lcom/deepalhome/launcher/hud/HudLyricManager;->currentMusicName:Ljava/lang/String;

    invoke-virtual {p0, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "PlayingSource"

    invoke-virtual {p0, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "playStatus"

    sget v6, Lcom/deepalhome/launcher/hud/HudLyricManager;->currentPlayStatus:I

    invoke-virtual {p0, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "lyricObj"

    invoke-virtual {p0, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcom/deepalhome/launcher/hud/HudLyricManager;->doubleMediaProxy:Lcom/incall/serversdk/interactive/DoubleMediaProxy;

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/incall/serversdk/interactive/DoubleMediaProxy;->sendMediaSource(Ljava/lang/String;)Z

    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_b

    :goto_a
    const-string v0, "Failed to send lyrics"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_b
    return-void

    :pswitch_f
    sget-object v0, Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment;->Companion:Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment$Companion;

    iget-object v0, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment;

    const-string v1, "this$0"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_d

    :cond_14
    iget-object v1, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_18

    sget-object v2, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->INSTANCE:Lcom/deepalhome/launcher/floating/FloatingBallWindow;

    invoke-static {v2, v1}, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->updateIconByFile$default(Lcom/deepalhome/launcher/floating/FloatingBallWindow;Ljava/lang/String;)V

    sget-object v2, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v2

    iget-object p0, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$2:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_15

    const-string v3, ""

    goto :goto_c

    :cond_15
    move-object v3, p0

    :goto_c
    invoke-virtual {v2, v3}, Lcom/deepalhome/launcher/config/UserConfig;->setFloatingBallIconLibraryPath(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment;->adapter:Lcom/deepalhome/launcher/floating/IconLibraryAdapter;

    if-eqz v2, :cond_17

    invoke-virtual {v2, p0}, Lcom/deepalhome/launcher/floating/IconLibraryAdapter;->setCurrentIconPath(Ljava/lang/String;)V

    iget-object p0, v0, Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment;->onIconApplied:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_16

    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    const p0, 0x7f130241

    invoke-static {p0}, Lcom/blankj/utilcode/util/ToastUtils;->showShort(I)V

    goto :goto_d

    :cond_17
    const-string p0, "adapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v6

    :cond_18
    const p0, 0x7f130242

    invoke-static {p0}, Lcom/blankj/utilcode/util/ToastUtils;->showShort(I)V

    :goto_d
    return-void

    :pswitch_10
    sget-object v0, Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment;->Companion:Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment$Companion;

    iget-object v0, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment;

    const-string v1, "this$0"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$2:Ljava/lang/Object;

    check-cast v1, Lcom/deepalhome/launcher/floating/CachedIcon;

    const-string v2, "$icon"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lcom/deepalhome/launcher/floating/FloatingBallIconStore;->INSTANCE:Lcom/deepalhome/launcher/floating/FloatingBallIconStore;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "getApplicationContext(...)"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/floating/CachedIcon;->isBuiltin()Z

    move-result v2

    if-eqz v2, :cond_19

    goto :goto_e

    :cond_19
    invoke-virtual {v1}, Lcom/deepalhome/launcher/floating/CachedIcon;->getFile()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1a

    goto :goto_e

    :cond_1a
    invoke-static {v3, v1}, Lcom/deepalhome/launcher/floating/FloatingBallIconStore;->cacheIcon(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    :goto_e
    new-instance v1, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;

    iget-object p0, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    const/4 v2, 0x4

    invoke-direct {v1, v0, v6, p0, v2}, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v1}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :pswitch_11
    iget-object v0, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    const-string v1, "$context"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "$serviceId"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$2:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    const-string v2, "$aliases"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;->INSTANCE:Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;->getEnabledServicesString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;->parseEnabledServiceIds(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1b
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-interface {p0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_1c
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1d

    goto :goto_10

    :cond_1d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v10, ":"

    const/4 v11, 0x0

    const/16 v14, 0x3e

    invoke-static/range {v9 .. v14}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_10
    :try_start_8
    sget p0, Lkotlin/Result;->$r8$clinit:I

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "enabled_accessibility_services"

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_11

    :catchall_4
    move-exception p0

    sget v1, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p0

    :goto_11
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    instance-of v2, p0, Lkotlin/Result$Failure;

    if-eqz v2, :cond_1e

    move-object p0, v1

    :cond_1e
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_1f

    goto :goto_12

    :cond_1f
    sget-object p0, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;->INSTANCE:Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v8}, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;->setAccessibilityEnabled(Landroid/content/Context;Z)V

    :goto_12
    return-void

    :pswitch_12
    iget-object v0, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/umeng/commonsdk/stateless/c;

    iget-object v1, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$1:Ljava/lang/Object;

    check-cast v1, Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;

    iget-object p0, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$2:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_9
    iget-object v0, v0, Lcom/umeng/commonsdk/stateless/c;->c:Landroid/content/Context;

    invoke-static {v0}, Landroidx/emoji2/text/DefaultEmojiCompatConfig;->create(Landroid/content/Context;)Landroidx/emoji2/text/FontRequestEmojiCompatConfig;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v2, v0, Landroidx/emoji2/text/EmojiCompat$Config;->mMetadataLoader:Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoader;

    check-cast v2, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;

    iget-object v3, v2, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :try_start_a
    iput-object p0, v2, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mExecutor:Ljava/util/concurrent/Executor;

    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :try_start_b
    iget-object v0, v0, Landroidx/emoji2/text/EmojiCompat$Config;->mMetadataLoader:Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoader;

    new-instance v2, Landroidx/emoji2/text/EmojiCompatInitializer$BackgroundDefaultLoader$1;

    invoke-direct {v2, v1, p0}, Landroidx/emoji2/text/EmojiCompatInitializer$BackgroundDefaultLoader$1;-><init>(Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;Ljava/util/concurrent/ThreadPoolExecutor;)V

    invoke-interface {v0, v2}, Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoader;->load(Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_14

    :catchall_5
    move-exception v0

    goto :goto_13

    :catchall_6
    move-exception v0

    :try_start_c
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :try_start_d
    throw v0

    :cond_20
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "EmojiCompat font provider not available on this device."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :goto_13
    invoke-virtual {v1, v0}, Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;->onFailed(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    :goto_14
    return-void

    :pswitch_13
    iget-object v0, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object p0, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    check-cast p0, Lme/wcy/lrcview/LrcView;

    invoke-static {p0, v0, v1}, Lme/wcy/lrcview/LrcView;->$r8$lambda$QE7k-VczTvWeAOdmR-0LrDKFUmU(Lme/wcy/lrcview/LrcView;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
