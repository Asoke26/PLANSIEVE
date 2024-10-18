SELECT COUNT(*)
 FROM posts p,
postLinks pl,
postHistory ph,
votes v,
badges b,
users u
WHERE p.CommentCount>=0
AND p.CommentCount<=13
AND ph.PostHistoryTypeId=5
AND u.Views>=0
AND u.DownVotes>=0
AND ph.CreationDate<=1513
AND v.CreationDate>=27
AND b.Date<=1540
AND u.CreationDate>=43
AND u.CreationDate<=1491

AND p.Id = pl.RelatedPostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = v.UserId;