.class public Lcom/xiaomi/finddevice/v2/ui/FindDeviceSysNotificationReceiver;
.super Landroid/app/Service;
.source "FindDeviceSysNotificationReceiver.java"


# static fields
.field private static final GUIDE_NOTIFICATION_PRIORITY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final INTENT_GUIDE:Landroid/content/Intent;

.field private static final INTENT_VERIFY:Landroid/content/Intent;

.field private static final NOTIFICATION_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, 0x10000000

    .line 287
    const-class v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceSysNotificationReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceSysNotificationReceiver;->NOTIFICATION_TAG:Ljava/lang/String;

    .line 305
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sput-object v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceSysNotificationReceiver;->INTENT_GUIDE:Landroid/content/Intent;

    .line 306
    sget-object v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceSysNotificationReceiver;->INTENT_GUIDE:Landroid/content/Intent;

    const-string/jumbo v1, "com.xiaomi.action.MICLOUD_FIND_DEVICE_GUIDE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    sget-object v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceSysNotificationReceiver;->INTENT_GUIDE:Landroid/content/Intent;

    const-string/jumbo v1, "com.miui.cloudservice"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    sget-object v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceSysNotificationReceiver;->INTENT_GUIDE:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 310
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sput-object v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceSysNotificationReceiver;->INTENT_VERIFY:Landroid/content/Intent;

    .line 311
    sget-object v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceSysNotificationReceiver;->INTENT_VERIFY:Landroid/content/Intent;

    const-string/jumbo v1, "com.xiaomi.action.MICLOUD_FIND_DEVICE_VERIFY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    sget-object v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceSysNotificationReceiver;->INTENT_VERIFY:Landroid/content/Intent;

    const-string/jumbo v1, "com.miui.cloudservice"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    sget-object v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceSysNotificationReceiver;->INTENT_VERIFY:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 317
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Integer;

    .line 318
    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 319
    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 320
    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 317
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 316
    sput-object v0, Lcom/xiaomi/finddevice/v2/ui/FindDeviceSysNotificationReceiver;->GUIDE_NOTIFICATION_PRIORITY:Ljava/util/List;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private getNotificationOnShow(I)[Lmiui/cloud/finddevice/FindDeviceSysNotification$Notification;
    .locals 13
    .param p1, "type"    # I

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 227
    const-string/jumbo v9, "sys_notification"

    invoke-virtual {p0, v9, v11}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceSysNotificationReceiver;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 229
    .local v8, "sp":Landroid/content/SharedPreferences;
    const/4 v0, 0x0

    .line 230
    .local v0, "all":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    if-lez p1, :cond_3

    .line 231
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "storage_key_notification_prefix_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 232
    .local v6, "ns":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 233
    new-instance v7, Ljava/util/TreeMap;

    invoke-direct {v7}, Ljava/util/TreeMap;-><init>()V

    .line 234
    .local v7, "single":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "storage_key_notification_prefix_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    move-object v0, v7

    .line 240
    .end local v0    # "all":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .end local v6    # "ns":Ljava/lang/String;
    .end local v7    # "single":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 243
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .local v5, "notifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/cloud/finddevice/FindDeviceSysNotification$Notification;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "en$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 246
    .local v2, "en":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string/jumbo v10, "storage_key_notification_prefix_"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 250
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 253
    .restart local v6    # "ns":Ljava/lang/String;
    :try_start_0
    invoke-static {v6}, Lmiui/cloud/finddevice/FindDeviceSysNotification$Notification;->fromJSON(Ljava/lang/String;)Lmiui/cloud/finddevice/FindDeviceSysNotification$Notification;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 256
    .local v4, "n":Lmiui/cloud/finddevice/FindDeviceSysNotification$Notification;
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 238
    .end local v2    # "en":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v3    # "en$iterator":Ljava/util/Iterator;
    .end local v4    # "n":Lmiui/cloud/finddevice/FindDeviceSysNotification$Notification;
    .end local v5    # "notifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/cloud/finddevice/FindDeviceSysNotification$Notification;>;"
    .end local v6    # "ns":Ljava/lang/String;
    .restart local v0    # "all":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    :cond_3
    invoke-interface {v8}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .local v0, "all":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    goto :goto_0

    .line 254
    .end local v0    # "all":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .restart local v2    # "en":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .restart local v3    # "en$iterator":Ljava/util/Iterator;
    .restart local v5    # "notifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/cloud/finddevice/FindDeviceSysNotification$Notification;>;"
    .restart local v6    # "ns":Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "e":Lorg/json/JSONException;
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string/jumbo v10, "Won\'t happen. "

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 259
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "en":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v6    # "ns":Ljava/lang/String;
    :cond_4
    new-array v9, v11, [Lmiui/cloud/finddevice/FindDeviceSysNotification$Notification;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lmiui/cloud/finddevice/FindDeviceSysNotification$Notification;

    return-object v9
.end method

.method private getNotificationOnShowTypes()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 218
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 219
    .local v1, "types":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceSysNotificationReceiver;->getNotificationOnShow(I)[Lmiui/cloud/finddevice/FindDeviceSysNotification$Notification;

    move-result-object v3

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 220
    .local v0, "n":Lmiui/cloud/finddevice/FindDeviceSysNotification$Notification;
    iget v5, v0, Lmiui/cloud/finddevice/FindDeviceSysNotification$Notification;->type:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 219
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 222
    .end local v0    # "n":Lmiui/cloud/finddevice/FindDeviceSysNotification$Notification;
    :cond_0
    return-object v1
.end method

.method private getShowSeq(I)I
    .locals 4
    .param p1, "type"    # I

    .prologue
    const/4 v3, 0x0

    .line 278
    const-string/jumbo v0, "sys_notification"

    invoke-virtual {p0, v0, v3}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceSysNotificationReceiver;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "storage_key_showseq_prefix_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 278
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 277
    return v0
.end method

.method private newShowSeq(I)I
    .locals 5
    .param p1, "type"    # I

    .prologue
    const/4 v3, 0x0

    .line 263
    const-string/jumbo v2, "sys_notification"

    invoke-virtual {p0, v2, v3}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceSysNotificationReceiver;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 265
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "storage_key_showseq"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 266
    .local v0, "seq":I
    add-int/lit8 v0, v0, 0x1

    .line 268
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 269
    const-string/jumbo v3, "storage_key_showseq"

    .line 268
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 270
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "storage_key_showseq_prefix_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 268
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 273
    return v0
.end method

.method private performCancel(II)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "intentSeq"    # I

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceSysNotificationReceiver;->getShowSeq(I)I

    move-result v0

    .line 149
    .local v0, "currentSeq":I
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Intent seq: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", current seq: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 151
    if-eq v0, p2, :cond_0

    return-void

    .line 153
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceSysNotificationReceiver;->removeNotification(I)V

    .line 147
    return-void
.end method

.method private performDismiss(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceSysNotificationReceiver;->removeNotification(I)V

    .line 128
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceSysNotificationReceiver;->performDismissOnUI(I)V

    .line 126
    return-void
.end method

.method private performDismissOnUI(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 199
    const-string/jumbo v1, "notification"

    invoke-virtual {p0, v1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceSysNotificationReceiver;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 200
    .local v0, "manager":Landroid/app/NotificationManager;
    sget-object v1, Lcom/xiaomi/finddevice/v2/ui/FindDeviceSysNotificationReceiver;->NOTIFICATION_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 197
    return-void
.end method

.method private performShow(Lmiui/cloud/finddevice/FindDeviceSysNotification$Notification;)V
    .locals 7
    .param p1, "n"    # Lmiui/cloud/finddevice/FindDeviceSysNotification$Notification;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceSysNotificationReceiver;->getNotificationOnShowTypes()Ljava/util/Set;

    move-result-object v0

    .line 100
    .local v0, "allTypesOnShow":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget v4, p1, Lmiui/cloud/finddevice/FindDeviceSysNotification$Notification;->type:I

    .line 102
    .local v4, "type":I
    sget-object v5, Lcom/xiaomi/finddevice/v2/ui/FindDeviceSysNotificationReceiver;->GUIDE_NOTIFICATION_PRIORITY:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 103
    .local v2, "pri":I
    if-ltz v2, :cond_1

    .line 104
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-gt v1, v2, :cond_0

    .line 105
    sget-object v5, Lcom/xiaomi/finddevice/v2/ui/FindDeviceSysNotificationReceiver;->GUIDE_NOTIFICATION_PRIORITY:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceSysNotificationReceiver;->performDismiss(I)V

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    :cond_0
    sget-object v5, Lcom/xiaomi/finddevice/v2/ui/FindDeviceSysNotificationReceiver;->GUIDE_NOTIFICATION_PRIORITY:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    .line 108
    .local v3, "priSize":I
    add-int/lit8 v1, v2, 0x1

    :goto_1
    if-ge v1, v3, :cond_1

    .line 109
    sget-object v5, Lcom/xiaomi/finddevice/v2/ui/FindDeviceSysNotificationReceiver;->GUIDE_NOTIFICATION_PRIORITY:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 110
    const/4 p1, 0x0

    .line 116
    .end local v1    # "i":I
    .end local v3    # "priSize":I
    .end local p1    # "n":Lmiui/cloud/finddevice/FindDeviceSysNotification$Notification;
    :cond_1
    if-eqz p1, :cond_3

    .line 117
    const/16 v5, 0x40

    if-ne v4, v5, :cond_2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 121
    :cond_2
    :goto_2
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceSysNotificationReceiver;->putNotification(Lmiui/cloud/finddevice/FindDeviceSysNotification$Notification;)V

    .line 122
    invoke-direct {p0, v4}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceSysNotificationReceiver;->performShowOnUI(I)V

    .line 98
    :cond_3
    return-void

    .line 108
    .restart local v1    # "i":I
    .restart local v3    # "priSize":I
    .restart local p1    # "n":Lmiui/cloud/finddevice/FindDeviceSysNotification$Notification;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 118
    .end local v1    # "i":I
    .end local v3    # "priSize":I
    .end local p1    # "n":Lmiui/cloud/finddevice/FindDeviceSysNotification$Notification;
    :cond_5
    invoke-static {p0}, Lcom/xiaomi/finddevice/common/util/StatUtil;->recordVerifyFindDeviceNotificationShowEvent(Landroid/content/Context;)V

    goto :goto_2
.end method

.method private performShowOnUI(I)V
    .locals 14
    .param p1, "type"    # I

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceSysNotificationReceiver;->getNotificationOnShow(I)[Lmiui/cloud/finddevice/FindDeviceSysNotification$Notification;

    move-result-object v6

    .line 159
    .local v6, "notifications":[Lmiui/cloud/finddevice/FindDeviceSysNotification$Notification;
    const/4 v9, 0x0

    array-length v10, v6

    :goto_0
    if-ge v9, v10, :cond_1

    aget-object v4, v6, v9

    .line 160
    .local v4, "n":Lmiui/cloud/finddevice/FindDeviceSysNotification$Notification;
    new-instance v2, Landroid/content/Intent;

    const-class v11, Lcom/xiaomi/finddevice/v2/ui/FindDeviceSysNotificationReceiver;

    invoke-direct {v2, p0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 161
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v11, "key_notification_type"

    iget v12, v4, Lmiui/cloud/finddevice/FindDeviceSysNotification$Notification;->type:I

    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 162
    const-string/jumbo v11, "key_notification_show_seq"

    iget v12, v4, Lmiui/cloud/finddevice/FindDeviceSysNotification$Notification;->type:I

    invoke-direct {p0, v12}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceSysNotificationReceiver;->newShowSeq(I)I

    move-result v12

    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 163
    const-string/jumbo v11, "key_notification_cancelable"

    iget-boolean v12, v4, Lmiui/cloud/finddevice/FindDeviceSysNotification$Notification;->cancelable:Z

    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 165
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 166
    .local v7, "triggerIntent":Landroid/content/Intent;
    const-string/jumbo v11, "private_action_trigger"

    invoke-virtual {v7, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    iget v11, v4, Lmiui/cloud/finddevice/FindDeviceSysNotification$Notification;->type:I

    const/high16 v12, 0x10000000

    invoke-static {p0, v11, v7, v12}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 170
    .local v8, "triggerPI":Landroid/app/PendingIntent;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 171
    .local v0, "cancelIntent":Landroid/content/Intent;
    const-string/jumbo v11, "private_action_cancel"

    invoke-virtual {v0, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    iget v11, v4, Lmiui/cloud/finddevice/FindDeviceSysNotification$Notification;->type:I

    const/high16 v12, 0x10000000

    invoke-static {p0, v11, v0, v12}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 175
    .local v1, "cancelPI":Landroid/app/PendingIntent;
    new-instance v11, Landroid/app/Notification$Builder;

    invoke-direct {v11, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v11, v8}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 177
    iget-object v12, v4, Lmiui/cloud/finddevice/FindDeviceSysNotification$Notification;->title:Ljava/lang/String;

    .line 175
    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 178
    iget-object v12, v4, Lmiui/cloud/finddevice/FindDeviceSysNotification$Notification;->content:Ljava/lang/String;

    .line 175
    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 179
    const/high16 v12, 0x7f020000

    .line 175
    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 180
    const/4 v12, -0x1

    .line 175
    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 182
    .local v5, "nb":Landroid/app/Notification$Builder;
    iget-boolean v11, v4, Lmiui/cloud/finddevice/FindDeviceSysNotification$Notification;->cancelable:Z

    if-eqz v11, :cond_0

    .line 183
    invoke-virtual {v5, v1}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 188
    :goto_1
    const/4 v11, 0x2

    invoke-virtual {v5, v11}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 191
    const-string/jumbo v11, "notification"

    invoke-virtual {p0, v11}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceSysNotificationReceiver;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 192
    .local v3, "manager":Landroid/app/NotificationManager;
    sget-object v11, Lcom/xiaomi/finddevice/v2/ui/FindDeviceSysNotificationReceiver;->NOTIFICATION_TAG:Ljava/lang/String;

    iget v12, v4, Lmiui/cloud/finddevice/FindDeviceSysNotification$Notification;->type:I

    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v13

    invoke-virtual {v3, v11, v12, v13}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 159
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 185
    .end local v3    # "manager":Landroid/app/NotificationManager;
    :cond_0
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    goto :goto_1

    .line 156
    .end local v0    # "cancelIntent":Landroid/content/Intent;
    .end local v1    # "cancelPI":Landroid/app/PendingIntent;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "n":Lmiui/cloud/finddevice/FindDeviceSysNotification$Notification;
    .end local v5    # "nb":Landroid/app/Notification$Builder;
    .end local v7    # "triggerIntent":Landroid/content/Intent;
    .end local v8    # "triggerPI":Landroid/app/PendingIntent;
    :cond_1
    return-void
.end method

.method private performTrigger(IIZ)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "intentSeq"    # I
    .param p3, "cancelable"    # Z

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceSysNotificationReceiver;->getShowSeq(I)I

    move-result v0

    .line 133
    .local v0, "currentSeq":I
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Intent seq: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", current seq: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ". "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 135
    const/16 v2, 0x10

    if-eq p1, v2, :cond_0

    .line 136
    const/16 v2, 0x20

    if-ne p1, v2, :cond_2

    .line 138
    :cond_0
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/xiaomi/finddevice/v2/ui/FindDeviceSysNotificationReceiver;->INTENT_GUIDE:Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 139
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 140
    invoke-virtual {p0, v1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceSysNotificationReceiver;->startActivity(Landroid/content/Intent;)V

    .line 131
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 137
    :cond_2
    const/16 v2, 0x30

    if-eq p1, v2, :cond_0

    .line 141
    const/16 v2, 0x40

    if-ne p1, v2, :cond_1

    .line 142
    sget-object v2, Lcom/xiaomi/finddevice/v2/ui/FindDeviceSysNotificationReceiver;->INTENT_VERIFY:Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceSysNotificationReceiver;->startActivity(Landroid/content/Intent;)V

    .line 143
    invoke-static {p0}, Lcom/xiaomi/finddevice/common/util/StatUtil;->recordVerifyFindDeviceNotificationClickEvent(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private putNotification(Lmiui/cloud/finddevice/FindDeviceSysNotification$Notification;)V
    .locals 3
    .param p1, "n"    # Lmiui/cloud/finddevice/FindDeviceSysNotification$Notification;

    .prologue
    .line 204
    const-string/jumbo v0, "sys_notification"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceSysNotificationReceiver;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "storage_key_notification_prefix_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lmiui/cloud/finddevice/FindDeviceSysNotification$Notification;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lmiui/cloud/finddevice/FindDeviceSysNotification$Notification;->toJSON()Ljava/lang/String;

    move-result-object v2

    .line 204
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 203
    return-void
.end method

.method private removeNotification(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 211
    const-string/jumbo v0, "sys_notification"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceSysNotificationReceiver;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "storage_key_notification_prefix_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 211
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 210
    return-void
.end method

.method public static reshowAll(Landroid/content/Context;)V
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 32
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xiaomi/finddevice/v2/ui/FindDeviceSysNotificationReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 33
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "private_action_reshow_all"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 31
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 284
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 40
    new-array v6, v11, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Handle intent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ". "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v6}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 42
    const-string/jumbo v6, "action_show"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 44
    const/4 v3, 0x0

    .line 46
    .local v3, "n":Lmiui/cloud/finddevice/FindDeviceSysNotification$Notification;
    const-string/jumbo v6, "key_notification"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 47
    .local v4, "ns":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 48
    :try_start_0
    invoke-static {v4}, Lmiui/cloud/finddevice/FindDeviceSysNotification$Notification;->fromJSON(Ljava/lang/String;)Lmiui/cloud/finddevice/FindDeviceSysNotification$Notification;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 52
    .end local v3    # "n":Lmiui/cloud/finddevice/FindDeviceSysNotification$Notification;
    :cond_0
    :goto_0
    if-nez v3, :cond_2

    .line 53
    new-array v6, v11, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Bad notification "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ". "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v6}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 94
    .end local v4    # "ns":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-virtual {p0, p3}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceSysNotificationReceiver;->stopSelfResult(I)Z

    .line 95
    const/4 v6, 0x2

    return v6

    .line 49
    .restart local v3    # "n":Lmiui/cloud/finddevice/FindDeviceSysNotification$Notification;
    .restart local v4    # "ns":Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "e":Lorg/json/JSONException;
    goto :goto_0

    .line 55
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v3    # "n":Lmiui/cloud/finddevice/FindDeviceSysNotification$Notification;
    :cond_2
    invoke-direct {p0, v3}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceSysNotificationReceiver;->performShow(Lmiui/cloud/finddevice/FindDeviceSysNotification$Notification;)V

    goto :goto_1

    .line 58
    .end local v4    # "ns":Ljava/lang/String;
    :cond_3
    const-string/jumbo v6, "action_dismiss"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 60
    const-string/jumbo v6, "key_type"

    invoke-virtual {p1, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 61
    .local v5, "type":I
    if-gtz v5, :cond_4

    .line 62
    new-array v6, v11, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Bad notification type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ". "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v6}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    goto :goto_1

    .line 64
    :cond_4
    invoke-direct {p0, v5}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceSysNotificationReceiver;->performDismiss(I)V

    goto :goto_1

    .line 67
    .end local v5    # "type":I
    :cond_5
    const-string/jumbo v6, "private_action_reshow_all"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 69
    invoke-direct {p0, v10}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceSysNotificationReceiver;->performShowOnUI(I)V

    goto :goto_1

    .line 71
    :cond_6
    const-string/jumbo v6, "private_action_trigger"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 73
    const-string/jumbo v6, "key_notification_type"

    invoke-virtual {p1, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 74
    .restart local v5    # "type":I
    const-string/jumbo v6, "key_notification_show_seq"

    invoke-virtual {p1, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 75
    .local v2, "intentSeq":I
    const-string/jumbo v6, "key_notification_cancelable"

    invoke-virtual {p1, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 76
    .local v0, "cancelable":Z
    if-gtz v5, :cond_7

    .line 77
    new-array v6, v11, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Bad notification type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ". "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v6}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 79
    :cond_7
    invoke-direct {p0, v5, v2, v0}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceSysNotificationReceiver;->performTrigger(IIZ)V

    goto/16 :goto_1

    .line 82
    .end local v0    # "cancelable":Z
    .end local v2    # "intentSeq":I
    .end local v5    # "type":I
    :cond_8
    const-string/jumbo v6, "private_action_cancel"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 84
    const-string/jumbo v6, "key_notification_type"

    invoke-virtual {p1, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 85
    .restart local v5    # "type":I
    const-string/jumbo v6, "key_notification_show_seq"

    invoke-virtual {p1, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 86
    .restart local v2    # "intentSeq":I
    if-gtz v5, :cond_9

    .line 87
    new-array v6, v11, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Bad notification type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ". "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v6}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 89
    :cond_9
    invoke-direct {p0, v5, v2}, Lcom/xiaomi/finddevice/v2/ui/FindDeviceSysNotificationReceiver;->performCancel(II)V

    goto/16 :goto_1
.end method
