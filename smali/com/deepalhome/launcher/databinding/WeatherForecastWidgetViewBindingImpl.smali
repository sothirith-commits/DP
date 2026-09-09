.class public final Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetViewBindingImpl;
.super Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetViewBinding;
.source "SourceFile"


# static fields
.field public static final sIncludes:Lcom/koushikdutta/async/Util$8;

.field public static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public mDirtyFlags:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/koushikdutta/async/Util$8;

    invoke-direct {v0}, Lcom/koushikdutta/async/Util$8;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetViewBindingImpl;->sIncludes:Lcom/koushikdutta/async/Util$8;

    const-string v1, "weather_forecast_widget_item"

    filled-new-array {v1, v1, v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x3

    filled-new-array {v3, v4, v2}, [I

    move-result-object v2

    const v3, 0x7f0e011c

    filled-new-array {v3, v3, v3}, [I

    move-result-object v3

    iget-object v4, v0, Lcom/koushikdutta/async/Util$8;->val$sink:Ljava/lang/Object;

    check-cast v4, [[Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v1, v4, v5

    iget-object v1, v0, Lcom/koushikdutta/async/Util$8;->val$bb:Ljava/lang/Object;

    check-cast v1, [[I

    aput-object v2, v1, v5

    iget-object v0, v0, Lcom/koushikdutta/async/Util$8;->val$callback:Ljava/lang/Object;

    check-cast v0, [[I

    aput-object v3, v0, v5

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetViewBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0b00bd

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0b0194

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0b0192

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method


# virtual methods
.method public final executeBindings()V
    .locals 2

    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetViewBindingImpl;->mDirtyFlags:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetViewBinding;->forecastToday:Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetItemBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->executeBindingsInternal()V

    iget-object v0, p0, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetViewBinding;->forecastTomorrow:Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetItemBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->executeBindingsInternal()V

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetViewBinding;->forecastAfterTomorrow:Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetItemBinding;

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->executeBindingsInternal()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final hasPendingBindings()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetViewBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetViewBinding;->forecastToday:Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetItemBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->hasPendingBindings()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetViewBinding;->forecastTomorrow:Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetItemBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->hasPendingBindings()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetViewBinding;->forecastAfterTomorrow:Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetItemBinding;

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->hasPendingBindings()Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final invalidateAll()V
    .locals 2

    monitor-enter p0

    const-wide/16 v0, 0x8

    :try_start_0
    iput-wide v0, p0, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetViewBindingImpl;->mDirtyFlags:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetViewBinding;->forecastToday:Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetItemBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->invalidateAll()V

    iget-object v0, p0, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetViewBinding;->forecastTomorrow:Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetItemBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->invalidateAll()V

    iget-object v0, p0, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetViewBinding;->forecastAfterTomorrow:Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetItemBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->invalidateAll()V

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
