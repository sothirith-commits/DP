.class public final Lcom/google/android/material/resources/CancelableFontCallback;
.super Lcom/google/android/material/resources/TextAppearanceFontCallback;
.source "SourceFile"


# instance fields
.field public final applyFont:Lcom/koushikdutta/async/FilteredDataEmitter$1;

.field public cancelled:Z

.field public final fallbackFont:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/FilteredDataEmitter$1;Landroid/graphics/Typeface;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/resources/TextAppearanceFontCallback;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/resources/CancelableFontCallback;->fallbackFont:Landroid/graphics/Typeface;

    iput-object p1, p0, Lcom/google/android/material/resources/CancelableFontCallback;->applyFont:Lcom/koushikdutta/async/FilteredDataEmitter$1;

    return-void
.end method


# virtual methods
.method public final onFontRetrievalFailed(I)V
    .locals 0

    iget-boolean p1, p0, Lcom/google/android/material/resources/CancelableFontCallback;->cancelled:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/resources/CancelableFontCallback;->applyFont:Lcom/koushikdutta/async/FilteredDataEmitter$1;

    iget-object p0, p0, Lcom/google/android/material/resources/CancelableFontCallback;->fallbackFont:Landroid/graphics/Typeface;

    invoke-virtual {p1, p0}, Lcom/koushikdutta/async/FilteredDataEmitter$1;->apply(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

.method public final onFontRetrieved(Landroid/graphics/Typeface;Z)V
    .locals 0

    iget-boolean p2, p0, Lcom/google/android/material/resources/CancelableFontCallback;->cancelled:Z

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/google/android/material/resources/CancelableFontCallback;->applyFont:Lcom/koushikdutta/async/FilteredDataEmitter$1;

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/FilteredDataEmitter$1;->apply(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method
