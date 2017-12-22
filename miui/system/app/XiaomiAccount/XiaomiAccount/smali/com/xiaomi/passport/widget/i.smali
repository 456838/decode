.class public Lcom/xiaomi/passport/widget/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/Menu;


# static fields
.field private static final xh:[I


# instance fields
.field private wK:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/passport/widget/g;",
            ">;"
        }
    .end annotation
.end field

.field private wL:Lcom/xiaomi/passport/widget/j;

.field private final wM:Landroid/content/Context;

.field private wN:Landroid/view/ContextMenu$ContextMenuInfo;

.field private wO:I

.field private wP:Lcom/xiaomi/passport/widget/g;

.field wQ:Landroid/graphics/drawable/Drawable;

.field wR:Ljava/lang/CharSequence;

.field wS:Landroid/view/View;

.field private wT:Z

.field private wU:Z

.field private wV:Z

.field private wW:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/passport/widget/g;",
            ">;"
        }
    .end annotation
.end field

.field private wX:Z

.field private wY:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/passport/widget/g;",
            ">;"
        }
    .end annotation
.end field

.field private wZ:Z

.field private xa:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/xiaomi/passport/widget/a;",
            ">;>;"
        }
    .end annotation
.end field

.field private xb:Z

.field private xc:Z

.field private final xd:Landroid/content/res/Resources;

.field private xe:Z

.field private xf:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/passport/widget/g;",
            ">;"
        }
    .end annotation
.end field

.field private xg:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/passport/widget/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/xiaomi/passport/widget/i;->xh:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x4
        0x5
        0x3
        0x2
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/xiaomi/passport/widget/i;->wO:I

    iput-boolean v0, p0, Lcom/xiaomi/passport/widget/i;->xb:Z

    iput-boolean v0, p0, Lcom/xiaomi/passport/widget/i;->wX:Z

    iput-boolean v0, p0, Lcom/xiaomi/passport/widget/i;->wZ:Z

    iput-boolean v0, p0, Lcom/xiaomi/passport/widget/i;->wU:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/passport/widget/i;->xf:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/passport/widget/i;->xa:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p1, p0, Lcom/xiaomi/passport/widget/i;->wM:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/widget/i;->xd:Landroid/content/res/Resources;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/passport/widget/i;->wW:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/passport/widget/i;->xg:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/xiaomi/passport/widget/i;->wV:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/passport/widget/i;->wK:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/passport/widget/i;->wY:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/xiaomi/passport/widget/i;->wT:Z

    invoke-direct {p0, v1}, Lcom/xiaomi/passport/widget/i;->Ar(Z)V

    return-void
.end method

.method private Aa(Z)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/widget/i;->xa:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/passport/widget/i;->At()V

    iget-object v0, p0, Lcom/xiaomi/passport/widget/i;->xa:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/passport/widget/a;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/passport/widget/i;->xa:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1, p1}, Lcom/xiaomi/passport/widget/a;->zk(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/passport/widget/i;->As()V

    return-void
.end method

.method private Ab(Lcom/xiaomi/passport/widget/q;)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaomi/passport/widget/i;->xa:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/passport/widget/i;->xa:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/passport/widget/a;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/passport/widget/i;->xa:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move v0, v2

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_1
    if-nez v2, :cond_3

    invoke-interface {v1, p1}, Lcom/xiaomi/passport/widget/a;->zj(Lcom/xiaomi/passport/widget/q;)Z

    move-result v2

    move v0, v2

    goto :goto_1

    :cond_2
    return v2

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method private static Ae(Ljava/util/ArrayList;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/passport/widget/g;",
            ">;I)I"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/widget/g;

    invoke-virtual {v0}, Lcom/xiaomi/passport/widget/g;->zD()I

    move-result v0

    if-gt v0, p1, :cond_0

    add-int/lit8 v0, v1, 0x1

    return v0

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return v2
.end method

.method private static Ai(I)I
    .locals 2

    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x10

    if-ltz v0, :cond_0

    sget-object v1, Lcom/xiaomi/passport/widget/i;->xh:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "order does not contain a valid category."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v1, Lcom/xiaomi/passport/widget/i;->xh:[I

    aget v0, v1, v0

    shl-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr v1, p0

    or-int/2addr v0, v1

    return v0
.end method

.method private Al(IZ)V
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/widget/i;->wW:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/widget/i;->wW:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/widget/i;->zR(Z)V

    :cond_2
    return-void
.end method

.method private Ao(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/xiaomi/passport/widget/i;->zS()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p5, :cond_0

    iput-object p5, p0, Lcom/xiaomi/passport/widget/i;->wS:Landroid/view/View;

    iput-object v2, p0, Lcom/xiaomi/passport/widget/i;->wR:Ljava/lang/CharSequence;

    iput-object v2, p0, Lcom/xiaomi/passport/widget/i;->wQ:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {p0, v3}, Lcom/xiaomi/passport/widget/i;->zR(Z)V

    return-void

    :cond_0
    if-lez p1, :cond_3

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/passport/widget/i;->wR:Ljava/lang/CharSequence;

    :cond_1
    :goto_1
    if-lez p3, :cond_4

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/widget/i;->wQ:Landroid/graphics/drawable/Drawable;

    :cond_2
    :goto_2
    iput-object v2, p0, Lcom/xiaomi/passport/widget/i;->wS:Landroid/view/View;

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_1

    iput-object p2, p0, Lcom/xiaomi/passport/widget/i;->wR:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_4
    if-eqz p4, :cond_2

    iput-object p4, p0, Lcom/xiaomi/passport/widget/i;->wQ:Landroid/graphics/drawable/Drawable;

    goto :goto_2
.end method

.method private Ar(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/widget/i;->xd:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/widget/i;->xd:Landroid/content/res/Resources;

    const/high16 v1, 0x7f090000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/xiaomi/passport/widget/i;->xe:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private zY(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 8

    invoke-static {p3}, Lcom/xiaomi/passport/widget/i;->Ai(I)I

    move-result v5

    new-instance v0, Lcom/xiaomi/passport/widget/g;

    iget v7, p0, Lcom/xiaomi/passport/widget/i;->wO:I

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/passport/widget/g;-><init>(Lcom/xiaomi/passport/widget/i;IIIILjava/lang/CharSequence;I)V

    iget-object v1, p0, Lcom/xiaomi/passport/widget/i;->wN:Landroid/view/ContextMenu$ContextMenuInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/passport/widget/i;->wN:Landroid/view/ContextMenu$ContextMenuInfo;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/widget/g;->zK(Landroid/view/ContextMenu$ContextMenuInfo;)V

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/passport/widget/i;->wW:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/xiaomi/passport/widget/i;->wW:Ljava/util/ArrayList;

    invoke-static {v2, v5}, Lcom/xiaomi/passport/widget/i;->Ae(Ljava/util/ArrayList;I)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/xiaomi/passport/widget/i;->zR(Z)V

    return-object v0
.end method


# virtual methods
.method public Ac(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/passport/widget/i;->Ad(II)I

    move-result v0

    return v0
.end method

.method public Ad(II)I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/xiaomi/passport/widget/i;->size()I

    move-result v1

    if-gez p2, :cond_0

    move p2, v0

    :cond_0
    :goto_0
    if-ge p2, v1, :cond_2

    iget-object v0, p0, Lcom/xiaomi/passport/widget/i;->wW:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/widget/g;

    invoke-virtual {v0}, Lcom/xiaomi/passport/widget/g;->getGroupId()I

    move-result v0

    if-ne v0, p1, :cond_1

    return p2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public Af(I)I
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/passport/widget/i;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/i;->wW:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/widget/g;

    invoke-virtual {v0}, Lcom/xiaomi/passport/widget/g;->getItemId()I

    move-result v0

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method Ag(ILandroid/view/KeyEvent;)Lcom/xiaomi/passport/widget/g;
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/widget/i;->xf:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0, v0, p1, p2}, Lcom/xiaomi/passport/widget/i;->Ah(Ljava/util/List;ILandroid/view/KeyEvent;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v9

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v2

    new-instance v3, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v3}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    invoke-virtual {p2, v3}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/widget/g;

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/passport/widget/i;->Aj()Z

    move-result v4

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/widget/g;

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Lcom/xiaomi/passport/widget/g;->getAlphabeticShortcut()C

    move-result v1

    :goto_0
    iget-object v6, v3, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v6, v6, v8

    if-ne v1, v6, :cond_5

    and-int/lit8 v6, v2, 0x2

    if-nez v6, :cond_5

    :cond_3
    :goto_1
    return-object v0

    :cond_4
    invoke-virtual {v0}, Lcom/xiaomi/passport/widget/g;->getNumericShortcut()C

    move-result v1

    goto :goto_0

    :cond_5
    iget-object v6, v3, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v7, 0x2

    aget-char v6, v6, v7

    if-ne v1, v6, :cond_6

    and-int/lit8 v6, v2, 0x2

    if-nez v6, :cond_3

    :cond_6
    if-eqz v4, :cond_2

    const/16 v6, 0x8

    if-ne v1, v6, :cond_2

    const/16 v1, 0x43

    if-ne p1, v1, :cond_2

    goto :goto_1

    :cond_7
    return-object v9
.end method

.method Ah(Ljava/util/List;ILandroid/view/KeyEvent;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/passport/widget/g;",
            ">;I",
            "Landroid/view/KeyEvent;",
            ")V"
        }
    .end annotation

    const/16 v9, 0x43

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/xiaomi/passport/widget/i;->Aj()Z

    move-result v2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v3

    new-instance v4, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v4}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eq p2, v9, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/widget/i;->wW:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/widget/g;

    invoke-virtual {v0}, Lcom/xiaomi/passport/widget/g;->hasSubMenu()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/xiaomi/passport/widget/g;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/passport/widget/i;

    invoke-virtual {v1, p1, p2, p3}, Lcom/xiaomi/passport/widget/i;->Ah(Ljava/util/List;ILandroid/view/KeyEvent;)V

    :cond_2
    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/xiaomi/passport/widget/g;->getAlphabeticShortcut()C

    move-result v1

    :goto_1
    and-int/lit8 v6, v3, 0x5

    if-nez v6, :cond_1

    if-eqz v1, :cond_1

    iget-object v6, v4, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v6, v6, v8

    if-eq v1, v6, :cond_3

    iget-object v6, v4, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v7, 0x2

    aget-char v6, v6, v7

    if-ne v1, v6, :cond_5

    :cond_3
    :goto_2
    invoke-virtual {v0}, Lcom/xiaomi/passport/widget/g;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/xiaomi/passport/widget/g;->getNumericShortcut()C

    move-result v1

    goto :goto_1

    :cond_5
    if-eqz v2, :cond_1

    const/16 v6, 0x8

    if-ne v1, v6, :cond_1

    if-ne p2, v9, :cond_1

    goto :goto_2

    :cond_6
    return-void
.end method

.method Aj()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/passport/widget/i;->xc:Z

    return v0
.end method

.method public Ak(Landroid/view/MenuItem;I)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x0

    check-cast p1, Lcom/xiaomi/passport/widget/g;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/xiaomi/passport/widget/g;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/xiaomi/passport/widget/g;->zG()Z

    move-result v3

    invoke-virtual {p1}, Lcom/xiaomi/passport/widget/g;->zE()Landroid/view/ActionProvider;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/ActionProvider;->hasSubMenu()Z

    move-result v0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lcom/xiaomi/passport/widget/g;->zF()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/xiaomi/passport/widget/g;->expandActionView()Z

    move-result v0

    or-int/2addr v0, v3

    if-eqz v0, :cond_0

    invoke-virtual {p0, v5}, Lcom/xiaomi/passport/widget/i;->zZ(Z)V

    :cond_0
    :goto_1
    return v0

    :cond_1
    return v2

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/xiaomi/passport/widget/g;->hasSubMenu()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz v1, :cond_7

    :cond_4
    invoke-virtual {p0, v2}, Lcom/xiaomi/passport/widget/i;->zZ(Z)V

    invoke-virtual {p1}, Lcom/xiaomi/passport/widget/g;->hasSubMenu()Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Lcom/xiaomi/passport/widget/q;

    invoke-virtual {p0}, Lcom/xiaomi/passport/widget/i;->zQ()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p0, p1}, Lcom/xiaomi/passport/widget/q;-><init>(Landroid/content/Context;Lcom/xiaomi/passport/widget/i;Lcom/xiaomi/passport/widget/g;)V

    invoke-virtual {p1, v0}, Lcom/xiaomi/passport/widget/g;->zL(Lcom/xiaomi/passport/widget/q;)V

    :cond_5
    invoke-virtual {p1}, Lcom/xiaomi/passport/widget/g;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/widget/q;

    if-eqz v1, :cond_6

    invoke-virtual {v4, v0}, Landroid/view/ActionProvider;->onPrepareSubMenu(Landroid/view/SubMenu;)V

    :cond_6
    invoke-direct {p0, v0}, Lcom/xiaomi/passport/widget/i;->Ab(Lcom/xiaomi/passport/widget/q;)Z

    move-result v0

    or-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p0, v5}, Lcom/xiaomi/passport/widget/i;->zZ(Z)V

    goto :goto_1

    :cond_7
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_8

    invoke-virtual {p0, v5}, Lcom/xiaomi/passport/widget/i;->zZ(Z)V

    move v0, v3

    goto :goto_1

    :cond_8
    move v0, v3

    goto :goto_1
.end method

.method public Am(Lcom/xiaomi/passport/widget/j;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/widget/i;->wL:Lcom/xiaomi/passport/widget/j;

    return-void
.end method

.method protected An(Landroid/graphics/drawable/Drawable;)Lcom/xiaomi/passport/widget/i;
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move v3, v1

    move-object v4, p1

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/passport/widget/i;->Ao(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method protected Ap(Ljava/lang/CharSequence;)Lcom/xiaomi/passport/widget/i;
    .locals 6

    const/4 v4, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, v1

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/passport/widget/i;->Ao(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method protected Aq(Landroid/view/View;)Lcom/xiaomi/passport/widget/i;
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move v3, v1

    move-object v4, v2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/passport/widget/i;->Ao(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method public As()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/xiaomi/passport/widget/i;->xb:Z

    iget-boolean v0, p0, Lcom/xiaomi/passport/widget/i;->wX:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/xiaomi/passport/widget/i;->wX:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/widget/i;->zR(Z)V

    :cond_0
    return-void
.end method

.method public At()V
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/passport/widget/i;->xb:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/passport/widget/i;->xb:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/passport/widget/i;->wX:Z

    :cond_0
    return-void
.end method

.method public add(I)Landroid/view/MenuItem;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/widget/i;->xd:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v1, v1, v0}, Lcom/xiaomi/passport/widget/i;->zY(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/i;->xd:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaomi/passport/widget/i;->zY(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/passport/widget/i;->zY(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0, p1}, Lcom/xiaomi/passport/widget/i;->zY(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .locals 9

    iget-object v0, p0, Lcom/xiaomi/passport/widget/i;->wM:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v0, 0x0

    invoke-virtual {v4, p4, p5, p6, v0}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    move v3, v0

    :goto_0
    and-int/lit8 v0, p7, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/widget/i;->removeGroup(I)V

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_4

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    new-instance v6, Landroid/content/Intent;

    iget v1, v0, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-gez v1, :cond_3

    move-object v1, p6

    :goto_2
    invoke-direct {v6, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    new-instance v1, Landroid/content/ComponentName;

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v0, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/xiaomi/passport/widget/i;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {v0, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz p8, :cond_1

    iget v6, v0, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-ltz v6, :cond_1

    iget v0, v0, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aput-object v1, p8, v0

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    move v3, v0

    goto :goto_0

    :cond_3
    iget v1, v0, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aget-object v1, p5, v1

    goto :goto_2

    :cond_4
    return v3
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/widget/i;->xd:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/xiaomi/passport/widget/i;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/i;->xd:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/xiaomi/passport/widget/i;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/passport/widget/i;->zY(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/widget/g;

    new-instance v1, Lcom/xiaomi/passport/widget/q;

    iget-object v2, p0, Lcom/xiaomi/passport/widget/i;->wM:Landroid/content/Context;

    invoke-direct {v1, v2, p0, v0}, Lcom/xiaomi/passport/widget/q;-><init>(Landroid/content/Context;Lcom/xiaomi/passport/widget/i;Lcom/xiaomi/passport/widget/g;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/widget/g;->zL(Lcom/xiaomi/passport/widget/q;)V

    return-object v1
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/xiaomi/passport/widget/i;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/i;->wP:Lcom/xiaomi/passport/widget/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/widget/i;->wP:Lcom/xiaomi/passport/widget/g;

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/widget/i;->zX(Lcom/xiaomi/passport/widget/g;)Z

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/widget/i;->wW:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/widget/i;->zR(Z)V

    return-void
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/widget/i;->zZ(Z)V

    return-void
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/xiaomi/passport/widget/i;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    iget-object v0, p0, Lcom/xiaomi/passport/widget/i;->wW:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/widget/g;

    invoke-virtual {v0}, Lcom/xiaomi/passport/widget/g;->getItemId()I

    move-result v3

    if-ne v3, p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/xiaomi/passport/widget/g;->hasSubMenu()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/xiaomi/passport/widget/g;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/SubMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    return-object v4
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/i;->wW:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    return-object v0
.end method

.method public hasVisibleItems()Z
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/xiaomi/passport/widget/i;->size()I

    move-result v3

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/i;->wW:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/widget/g;

    invoke-virtual {v0}, Lcom/xiaomi/passport/widget/g;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return v2
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/passport/widget/i;->Ag(ILandroid/view/KeyEvent;)Lcom/xiaomi/passport/widget/g;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public performIdentifierAction(II)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/widget/i;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/xiaomi/passport/widget/i;->Ak(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/passport/widget/i;->Ag(ILandroid/view/KeyEvent;)Lcom/xiaomi/passport/widget/g;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1, p3}, Lcom/xiaomi/passport/widget/i;->Ak(Landroid/view/MenuItem;I)Z

    move-result v0

    :cond_0
    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/xiaomi/passport/widget/i;->zZ(Z)V

    :cond_1
    return v0
.end method

.method public removeGroup(I)V
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/widget/i;->Ac(I)I

    move-result v3

    if-ltz v3, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/i;->wW:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int v4, v0, v3

    move v0, v1

    :goto_0
    add-int/lit8 v2, v0, 0x1

    if-ge v0, v4, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/widget/i;->wW:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/widget/g;

    invoke-virtual {v0}, Lcom/xiaomi/passport/widget/g;->getGroupId()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-direct {p0, v3, v1}, Lcom/xiaomi/passport/widget/i;->Al(IZ)V

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/widget/i;->zR(Z)V

    :cond_1
    return-void
.end method

.method public removeItem(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/widget/i;->Af(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/passport/widget/i;->Al(IZ)V

    return-void
.end method

.method public setGroupCheckable(IZZ)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/widget/i;->wW:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/widget/g;

    invoke-virtual {v0}, Lcom/xiaomi/passport/widget/g;->getGroupId()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v0, p3}, Lcom/xiaomi/passport/widget/g;->zJ(Z)V

    invoke-virtual {v0, p2}, Lcom/xiaomi/passport/widget/g;->setCheckable(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setGroupEnabled(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/widget/i;->wW:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/widget/g;

    invoke-virtual {v0}, Lcom/xiaomi/passport/widget/g;->getGroupId()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v0, p2}, Lcom/xiaomi/passport/widget/g;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setGroupVisible(IZ)V
    .locals 5

    const/4 v2, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaomi/passport/widget/i;->wW:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/widget/g;

    invoke-virtual {v0}, Lcom/xiaomi/passport/widget/g;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_2

    invoke-virtual {v0, p2}, Lcom/xiaomi/passport/widget/g;->zM(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/xiaomi/passport/widget/i;->zR(Z)V

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public setQwertyMode(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/xiaomi/passport/widget/i;->xc:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/widget/i;->zR(Z)V

    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/i;->wW:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public zO()Lcom/xiaomi/passport/widget/i;
    .locals 0

    return-object p0
.end method

.method zP(Lcom/xiaomi/passport/widget/i;Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/i;->wL:Lcom/xiaomi/passport/widget/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/widget/i;->wL:Lcom/xiaomi/passport/widget/j;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/passport/widget/j;->Au(Lcom/xiaomi/passport/widget/i;Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zQ()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/i;->wM:Landroid/content/Context;

    return-object v0
.end method

.method zR(Z)V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/xiaomi/passport/widget/i;->xb:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iput-boolean v1, p0, Lcom/xiaomi/passport/widget/i;->wV:Z

    iput-boolean v1, p0, Lcom/xiaomi/passport/widget/i;->wT:Z

    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaomi/passport/widget/i;->Aa(Z)V

    :goto_0
    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/xiaomi/passport/widget/i;->wX:Z

    goto :goto_0
.end method

.method zS()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/widget/i;->xd:Landroid/content/res/Resources;

    return-object v0
.end method

.method zT(Landroid/view/MenuItem;)V
    .locals 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v2

    iget-object v0, p0, Lcom/xiaomi/passport/widget/i;->wW:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/widget/g;

    invoke-virtual {v0}, Lcom/xiaomi/passport/widget/g;->getGroupId()I

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/passport/widget/g;->zH()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/passport/widget/g;->isCheckable()Z

    move-result v1

    if-eqz v1, :cond_0

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/widget/g;->zI(Z)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    return-void
.end method

.method zU(Lcom/xiaomi/passport/widget/g;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/passport/widget/i;->wV:Z

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/widget/i;->zR(Z)V

    return-void
.end method

.method zV(Lcom/xiaomi/passport/widget/g;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/passport/widget/i;->wT:Z

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/widget/i;->zR(Z)V

    return-void
.end method

.method public zW(Lcom/xiaomi/passport/widget/g;)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaomi/passport/widget/i;->xa:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/passport/widget/i;->At()V

    iget-object v1, p0, Lcom/xiaomi/passport/widget/i;->xa:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/passport/widget/a;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/xiaomi/passport/widget/i;->xa:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move v0, v2

    :cond_1
    move v2, v0

    goto :goto_0

    :cond_2
    invoke-interface {v1, p0, p1}, Lcom/xiaomi/passport/widget/a;->zh(Lcom/xiaomi/passport/widget/i;Lcom/xiaomi/passport/widget/g;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p0}, Lcom/xiaomi/passport/widget/i;->As()V

    if-eqz v0, :cond_3

    iput-object p1, p0, Lcom/xiaomi/passport/widget/i;->wP:Lcom/xiaomi/passport/widget/g;

    :cond_3
    return v0

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public zX(Lcom/xiaomi/passport/widget/g;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaomi/passport/widget/i;->xa:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/passport/widget/i;->wP:Lcom/xiaomi/passport/widget/g;

    if-eq v1, p1, :cond_1

    :cond_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/passport/widget/i;->At()V

    iget-object v1, p0, Lcom/xiaomi/passport/widget/i;->xa:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/passport/widget/a;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/xiaomi/passport/widget/i;->xa:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move v0, v2

    :cond_2
    move v2, v0

    goto :goto_0

    :cond_3
    invoke-interface {v1, p0, p1}, Lcom/xiaomi/passport/widget/a;->zg(Lcom/xiaomi/passport/widget/i;Lcom/xiaomi/passport/widget/g;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {p0}, Lcom/xiaomi/passport/widget/i;->As()V

    if-eqz v0, :cond_4

    iput-object v4, p0, Lcom/xiaomi/passport/widget/i;->wP:Lcom/xiaomi/passport/widget/g;

    :cond_4
    return v0

    :cond_5
    move v0, v2

    goto :goto_1
.end method

.method final zZ(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/xiaomi/passport/widget/i;->wU:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/passport/widget/i;->wU:Z

    iget-object v0, p0, Lcom/xiaomi/passport/widget/i;->xa:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/passport/widget/a;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/passport/widget/i;->xa:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1, p0, p1}, Lcom/xiaomi/passport/widget/a;->zi(Lcom/xiaomi/passport/widget/i;Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/passport/widget/i;->wU:Z

    return-void
.end method
