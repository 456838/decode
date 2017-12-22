.class public Lcom/xiaomi/passport/ui/A;
.super Landroid/widget/BaseAdapter;
.source ""

# interfaces
.implements Landroid/widget/SectionIndexer;


# instance fields
.field private rE:Landroid/content/Context;

.field private rF:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/passport/utils/k;",
            ">;"
        }
    .end annotation
.end field

.field private rG:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rH:[I

.field private rI:[Ljava/lang/String;

.field private rJ:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-boolean v1, p0, Lcom/xiaomi/passport/ui/A;->rJ:Z

    iput-object p1, p0, Lcom/xiaomi/passport/ui/A;->rE:Landroid/content/Context;

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/A;->wN()V

    if-eqz p2, :cond_0

    const-string/jumbo v0, "show_country_code"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/passport/ui/A;->rJ:Z

    :cond_0
    return-void
.end method

.method private wN()V
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/xiaomi/passport/utils/j;->DC()Ljava/util/List;

    move-result-object v3

    invoke-static {}, Lcom/xiaomi/passport/utils/j;->DA()Ljava/util/List;

    move-result-object v4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/xiaomi/passport/ui/A;->rF:Ljava/util/List;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/A;->rF:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v5, Ljava/util/TreeSet;

    invoke-direct {v5}, Ljava/util/TreeSet;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_0

    const-string/jumbo v7, "!"

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v7, "!"

    invoke-interface {v5, v7}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/utils/k;

    iget-object v0, v0, Lcom/xiaomi/passport/utils/k;->zW:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5, v0}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-array v0, v1, [Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/SortedSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/A;->rI:[Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/A;->rI:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/xiaomi/passport/ui/A;->rH:[I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/passport/ui/A;->rG:Ljava/util/Map;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/A;->rH:[I

    aput v1, v0, v1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/A;->rG:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v3, p0, Lcom/xiaomi/passport/ui/A;->rE:Landroid/content/Context;

    const v4, 0x7f0c007d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v2

    :goto_2
    iget-object v1, p0, Lcom/xiaomi/passport/ui/A;->rI:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/xiaomi/passport/ui/A;->rH:[I

    iget-object v2, p0, Lcom/xiaomi/passport/ui/A;->rI:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-interface {v6, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    aput v2, v1, v0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/A;->rG:Ljava/util/Map;

    iget-object v2, p0, Lcom/xiaomi/passport/ui/A;->rH:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/passport/ui/A;->rI:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/A;->rF:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/xiaomi/passport/utils/k;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/A;->rF:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/utils/k;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/A;->getItem(I)Lcom/xiaomi/passport/utils/k;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getPositionForSection(I)I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/A;->rH:[I

    aget v0, v0, p1

    return v0
.end method

.method public getSectionForPosition(I)I
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/xiaomi/passport/ui/A;->rH:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/xiaomi/passport/ui/A;->rH:[I

    aget v2, v2, v0

    if-le v2, p1, :cond_1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/A;->rI:[Ljava/lang/String;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 v2, 0x0

    check-cast p2, Lcom/xiaomi/passport/ui/AreaCodePickerListItem;

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/A;->rE:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f03001a

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/ui/AreaCodePickerListItem;

    move-object p2, v0

    :cond_0
    const v0, 0x7f10005d

    invoke-virtual {p2, v0}, Lcom/xiaomi/passport/ui/AreaCodePickerListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/xiaomi/passport/ui/A;->rJ:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/A;->getItem(I)Lcom/xiaomi/passport/utils/k;

    move-result-object v1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/A;->rG:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v1, v0}, Lcom/xiaomi/passport/ui/AreaCodePickerListItem;->xc(Lcom/xiaomi/passport/utils/k;Ljava/lang/String;)V

    return-object p2

    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public wM(I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/ui/A;->rF:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/utils/k;

    iget-object v0, v0, Lcom/xiaomi/passport/utils/k;->zW:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
