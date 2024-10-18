SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE c.Score=0
AND p.PostTypeId=1
AND p.Score=4
AND p.ViewCount<=4937
AND ph.PostHistoryTypeId=1
AND u.Reputation<=270
AND u.Views>=0
AND u.Views<=51
AND u.DownVotes>=0
AND c.CreationDate>=41
AND c.CreationDate<=1541
AND pl.CreationDate>=499

AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId
AND u.Id = c.UserId
AND u.Id = v.UserId;