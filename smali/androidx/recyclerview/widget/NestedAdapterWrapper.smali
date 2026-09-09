.class public final Landroidx/recyclerview/widget/NestedAdapterWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field public mCachedItemCount:I

.field public final mCallback:Lokhttp3/internal/http2/Http2Connection$Builder;

.field public final mStableIdLookup:Lcom/bumptech/glide/GlideBuilder$1;

.field public final mViewTypeLookup:Landroidx/emoji2/text/MetadataRepo;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Lokhttp3/internal/http2/Http2Connection$Builder;Landroidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage;Lcom/bumptech/glide/GlideBuilder$1;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/recyclerview/widget/NestedAdapterWrapper$1;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/NestedAdapterWrapper$1;-><init>(Landroidx/recyclerview/widget/NestedAdapterWrapper;)V

    iput-object p1, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iput-object p2, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mCallback:Lokhttp3/internal/http2/Http2Connection$Builder;

    invoke-virtual {p3, p0}, Landroidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage;->createViewTypeWrapper(Landroidx/recyclerview/widget/NestedAdapterWrapper;)Landroidx/emoji2/text/MetadataRepo;

    move-result-object p2

    iput-object p2, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mViewTypeLookup:Landroidx/emoji2/text/MetadataRepo;

    iput-object p4, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mStableIdLookup:Lcom/bumptech/glide/GlideBuilder$1;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p2

    iput p2, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mCachedItemCount:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    return-void
.end method
