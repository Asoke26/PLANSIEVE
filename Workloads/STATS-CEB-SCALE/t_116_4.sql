SELECT COUNT(*)
 FROM postHistory ph,
posts p,
votes v,
users u
WHERE p.ViewCount >= 5745.0
AND p.CommentCount >= 6
AND v.VoteTypeId = 5
AND u.Views >= 842
AND u.Views <= 1070
AND u.UpVotes >= 314
AND ph.CreationDate >= 180

AND u.Id = p.OwnerUserId
AND p.Id = ph.PostId
AND p.Id = v.PostId;