SELECT COUNT(*)
 FROM posts p,
postLinks pl,
postHistory ph,
votes v,
badges b,
users u
WHERE p.AnswerCount>=0
AND p.FavoriteCount>=0
AND pl.LinkTypeId=1
AND ph.PostHistoryTypeId=2
AND u.Reputation>=1
AND u.DownVotes>=0
AND u.DownVotes<=0
AND u.UpVotes<=439
AND v.CreationDate>=28
AND u.CreationDate<=1507

AND p.Id = pl.RelatedPostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = v.UserId;