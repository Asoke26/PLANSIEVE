SELECT COUNT(*)
 FROM postHistory ph,
posts p,
votes v,
users u
WHERE p.ViewCount >= 21925.0
AND p.CommentCount >= 14
AND v.VoteTypeId = 5
AND u.Views >= 180
AND u.Views <= 284
AND u.UpVotes >= 37
AND ph.CreationDate >= 416

AND u.Id = p.OwnerUserId
AND p.Id = ph.PostId
AND p.Id = v.PostId;