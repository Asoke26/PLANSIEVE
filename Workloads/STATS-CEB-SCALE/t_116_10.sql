SELECT COUNT(*)
 FROM postHistory ph,
posts p,
votes v,
users u
WHERE p.ViewCount >= 691.0
AND p.CommentCount >= 1
AND v.VoteTypeId = 5
AND u.Views >= 48
AND u.Views <= 1289
AND u.UpVotes >= 107
AND ph.CreationDate >= 1012

AND u.Id = p.OwnerUserId
AND p.Id = ph.PostId
AND p.Id = v.PostId;